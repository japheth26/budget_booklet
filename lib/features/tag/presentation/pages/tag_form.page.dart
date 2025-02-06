import 'package:collection/collection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/core/state_status/state_status.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/core/widgets/dialog/global_dialog.dart';
import 'package:hani/features/auth/domain/bloc/auth/auth_bloc.dart';
import 'package:hani/features/tag/data/dto/create_tag.dto.dart';
import 'package:hani/features/tag/data/dto/delete_tag.dto.dart';
import 'package:hani/features/tag/data/dto/update_tag.dto.dart';
import 'package:hani/features/tag/domain/bloc/tag/tag_bloc.dart';
import 'package:hani/features/tag/domain/entities/tag.entity.dart';
import 'package:hani/features/tag/presentation/templates/tag_form/tag_form_param.dart';
import 'package:hani/features/tag/presentation/templates/tag_form/tag_form_template.dart';
import 'package:hani/features/wallet/domain/bloc/wallet/wallet_bloc.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';

@RoutePage()
class TagFormPage extends StatefulWidget {
  const TagFormPage({
    super.key,
    this.tagId,
    required this.transactionType,
  });

  final String? tagId;
  final String transactionType;

  @override
  State<TagFormPage> createState() => _TagFormPageState();
}

class _TagFormPageState extends State<TagFormPage> {
  late WalletBloc _walletBloc;
  late TagBloc _tagBloc;
  late AuthBloc _authBloc;

  late String? _tagId;

  final TextEditingController _nameController = TextEditingController();
  final GlobalKey<FormFieldState> _nameGlobalKey = GlobalKey();

  late StackRouter _router;
  Color _color = Colors.blue;
  late String _transactionType;
  late String _walletId;
  late String _userId;

  @override
  void initState() {
    super.initState();
    _walletBloc = getIt<WalletBloc>();
    _tagBloc = getIt<TagBloc>();
    _authBloc = getIt<AuthBloc>();
    _tagId = widget.tagId;
    _router = AutoRouter.of(context);
    _transactionType = widget.transactionType;
    _walletId = _walletBloc.state.selectedWallet!.walletId;
    _userId = _authBloc.state.authUserEntity!.userId;
    _initialize();
  }

  void _initialize() {
    final TagEntity? tag = _getTag();
    if (tag != null) {
      _nameController.text = tag.label;
      _color = tag.color;
    }
  }

  TagEntity? _getTag() {
    late TagEntity? tag;

    if (_transactionType == TransactionType.income) {
      tag = _tagBloc.state.incomeTags
          .firstWhereOrNull((e) => _tagId != null && e.tagId == _tagId);
    }

    if (_transactionType == TransactionType.expense) {
      tag = _tagBloc.state.expenseTags
          .firstWhereOrNull((e) => _tagId != null && e.tagId == _tagId);
    }

    return tag;
  }

  @override
  void dispose() {
    super.dispose();

    _nameController.dispose();
    _nameGlobalKey.currentState?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagBloc, TagState>(
      bloc: _tagBloc,
      builder: (context, state) {
        return TagFormTemplate(
          params: TagFormParam(
            initialColor: _color,
            isLoading: state.stateStatus == StateStatus.loading,
            isExisting: _tagId != null,
            onBackPressed: () {
              _router.maybePop();
            },
            nameController: _nameController,
            nameGlobalKey: _nameGlobalKey,
            nameValidator: _handleNameValidator,
            onColorChanged: _handleChangeColor,
            onSubmit: _handleSubmit,
            onDelete: _handleOnDelete,
          ),
        );
      },
    );
  }

  String? _handleNameValidator(String? value) {
    return Guard.againstEmptyString('Name', value);
  }

  void _handleChangeColor(Color color) {
    _color = color;
  }

  void _handleSubmit() {
    if (_nameGlobalKey.currentState!.validate()) {
      if (_tagId != null) {
        _updateTag();
      } else {
        _createTag();
      }
    }
  }

  Future<void> _handleOnDelete() async {
    final bool? result = await GlobalDialog.showVerificationDialog(context,
        message: 'Are you sure you want to delete this tag?');

    if (result ?? false) {
      _deleteTag();
    }
  }

  void _createTag() {
    _tagBloc.add(TagEvent.createTag(
        dto: CreateTagDto(
      label: _nameController.text.toLowerCase(),
      color: _color.value,
      walletId: _walletId,
      transactionType: _transactionType,
      createdBy: _userId,
    )));
  }

  void _updateTag() {
    _tagBloc.add(TagEvent.updateTag(
        dto: UpdateTagDto(
      tagId: _tagId,
      label: _nameController.text,
      color: _color.value,
    )));
  }

  void _deleteTag() {
    _tagBloc.add(TagEvent.deleteTag(
        dto: DeleteTagDto(
      tagId: _tagId,
      userId: _userId,
    )));
  }
}
