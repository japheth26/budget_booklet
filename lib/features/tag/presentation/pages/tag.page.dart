import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hani/core/router/app_router.dart';
import 'package:hani/core/state_status/state_status.dart';
import 'package:hani/core/widgets/dialog/global_dialog.dart';
import 'package:hani/features/tag/data/dto/get_all_tags.dto.dart';
import 'package:hani/features/tag/domain/bloc/tag/tag_bloc.dart';
import 'package:hani/features/tag/presentation/templates/tag/tag_param.dart';
import 'package:hani/features/tag/presentation/templates/tag/tag_template.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';

import '../../../../core/dependency_injection/injection.dart';
import '../../../wallet/domain/bloc/wallet/wallet_bloc.dart';
import '../../domain/entities/tag.entity.dart';

@RoutePage()
class TagPage extends StatefulWidget {
  const TagPage({
    super.key,
    required this.transactionType,
    this.isSelecting = false,
    this.selectedTags,
  });

  final String transactionType;
  final bool isSelecting;
  final List<String>? selectedTags;

  @override
  State<TagPage> createState() => _TagPageState();
}

class _TagPageState extends State<TagPage> {
  late StackRouter _router;
  late TagBloc _tagBloc;
  late WalletBloc _walletBloc;

  late String _walletId;
  late String _transactionType;

  late bool _isSelecting;

  @override
  void initState() {
    super.initState();
    _router = AutoRouter.of(context);
    _tagBloc = getIt<TagBloc>();
    _walletBloc = getIt<WalletBloc>();

    _walletId = _walletBloc.state.selectedWallet!.walletId;
    _transactionType = widget.transactionType;

    _isSelecting = widget.isSelecting;

    if (_isSelecting) {
      _tagBloc
          .add(TagEvent.saveSelectedTags(selectedTags: widget.selectedTags!));
    }
  }

  @override
  void dispose() {
    super.dispose();

    _tagBloc.add(const TagEvent.clearSelectedTags());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TagBloc, TagState>(
      bloc: _tagBloc,
      listener: _handleTagListener,
      builder: (context, state) {
        return TagTemplate(
          tagsParam: TagsParam(
            title: _transactionType == TransactionType.expense
                ? 'Expense Tags'
                : 'Income Tags',
            onBackPressed: _handleOnBackPressed,
            addOnPressed: _handleAddOnPressed,
            onRefresh: _handleOnRefresh,
            tagItemParams: _getTagItems(state),
          ),
        );
      },
    );
  }

  void _handleTagListener(BuildContext context, TagState state) {
    if (state.stateStatus == StateStatus.error) {
      GlobalDialog.showErrorDialog(context, message: state.errorMessage);
    }

    if (state.stateStatus == StateStatus.success) {
      GlobalDialog.showSuccessDialog(context, message: state.successMessage);
    }

    if (state.added) {
      _router.maybePop();
    }
  }

  _getTags() {
    _tagBloc.add(
      TagEvent.getAllTags(
        dto: GetAllTagsDto(walletId: _walletId),
      ),
    );
  }

  List<TagItemParam> _getTagItems(TagState state) {
    List<TagItemParam> tags = [];

    mapper(TagEntity e) {
      return TagItemParam(
        isSelecting: _isSelecting,
        isSelected: state.selectedTags.contains(e.tagId),
        name: e.label,
        color: e.color,
        onTap: () {
          _router.push(
              TagFormRoute(transactionType: _transactionType, tagId: e.tagId));
        },
        onSelect: () {
          final bool isSelected = state.selectedTags.contains(e.tagId);

          if (isSelected) {
            _tagBloc.add(TagEvent.removeTag(tagId: e.tagId));
          } else {
            _tagBloc.add(TagEvent.selectTag(tagId: e.tagId));
          }
        },
      );
    }

    if (_transactionType == TransactionType.income) {
      tags = state.incomeTags.where((e) => !e.deleted).map(mapper).toList();
    }

    if (_transactionType == TransactionType.expense) {
      tags = state.expenseTags.where((e) => !e.deleted).map(mapper).toList();
    }

    return tags;
  }

  _handleAddOnPressed() {
    _router.push(TagFormRoute(transactionType: _transactionType));
  }

  Future<void> _handleOnRefresh() async {
    _getTags();
  }

  _handleOnBackPressed() async {
    await _router.maybePop<List<String>>(_tagBloc.state.selectedTags);
  }
}
