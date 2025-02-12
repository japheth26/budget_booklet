import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/core/state_status/state_status.dart';
import 'package:hani/core/validator/guard.dart';
import 'package:hani/core/widgets/dialog/global_dialog.dart';
import 'package:hani/features/category/data/dto/create_category.dto.dart';
import 'package:hani/features/category/data/dto/delete_category.dto.dart';
import 'package:hani/features/category/data/dto/update_category.dto.dart';
import 'package:hani/features/category/presentation/templates/category/category_param.dart';
import 'package:hani/features/category/presentation/templates/category_form/category_form_param.dart';
import 'package:hani/features/category/presentation/templates/category_form/category_form_template.dart';
import 'package:hani/features/tag/domain/bloc/tag/tag_bloc.dart';
import 'package:hani/features/wallet/domain/bloc/wallet/wallet_bloc.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';

import '../../../../core/router/app_router.dart';
import '../../../auth/domain/bloc/auth/auth_bloc.dart';
import '../../domain/bloc/category/category_bloc.dart';

@RoutePage()
class CategoryFormPage extends StatefulWidget {
  const CategoryFormPage({
    super.key,
    required this.transactionType,
    this.categoryId,
  });

  final String transactionType;
  final String? categoryId;

  @override
  State<CategoryFormPage> createState() => _CategoryFormPageState();
}

class _CategoryFormPageState extends State<CategoryFormPage> {
  int _codePoint = Icons.apple.codePoint;
  Color _initialColor = Colors.blue;

  final TextEditingController _labelController = TextEditingController();
  final GlobalKey<FormFieldState<dynamic>> _labelFormKey = GlobalKey();

  late StackRouter _router;
  late String _transactionType;
  late String? _categoryId;

  late CategoryBloc _categoryBloc;
  late TagBloc _tagBloc;
  late AuthBloc _authBloc;
  late WalletBloc _walletBloc;

  @override
  void initState() {
    super.initState();

    _router = AutoRouter.of(context);
    _transactionType = widget.transactionType;
    _categoryId = widget.categoryId;

    _categoryBloc = getIt<CategoryBloc>();
    _tagBloc = getIt<TagBloc>();
    _authBloc = getIt<AuthBloc>();
    _walletBloc = getIt<WalletBloc>();

    _initializeData();
  }

  void _initializeData() {
    if (widget.categoryId != null) {
      final category = (_transactionType == TransactionType.expense
              ? _categoryBloc.state.expenseCategories
              : _categoryBloc.state.incomeCategories)
          .firstWhere((category) => category.categoryId == widget.categoryId);

      _labelController.text = category.label;
      _initialColor = category.color;
      _codePoint = category.icon;

      final categoryTags =
          _categoryBloc.state.tagsByCategoryId[category.categoryId] ?? [];

      _categoryBloc.add(
        CategoryEvent.saveSelectedTagIds(
          tagIds: categoryTags.map((e) => e.tagId).toList(),
        ),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();

    _labelController.dispose();
    _labelFormKey.currentState?.dispose();

    _categoryBloc.add(const CategoryEvent.clearSelectedTagIds());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryBloc, CategoryState>(
      bloc: _categoryBloc,
      listener: _handlesCategoryListener,
      builder: (context, state) {
        return CategoryFormTemplate(
          params: CategoryFormParam(
            transactionType: _transactionType,
            loading: state.stateStatus == StateStatus.loading,
            existing: _categoryId != null,
            onBackPressed: _router.maybePop,
            labelController: _labelController,
            labelFormKey: _labelFormKey,
            labelValidator: (value) {
              return Guard.againstEmptyString('Label', value);
            },
            selectedTags: _getSelectedTags(state.selectedTagIds),
            initialColor: _initialColor,
            onColorChanged: _handleOnColorChanged,
            codePoint: _codePoint,
            onSelectIcon: _handleOnSelectIcon,
            onSaveCategory: _handleOnSaveCategory,
            onAddTag: _handleOnAddTag,
            onDeleteCategory: _handleOnDeleteCategory,
          ),
        );
      },
    );
  }

  void _handlesCategoryListener(BuildContext context, CategoryState state) {
    if (state.stateStatus == StateStatus.error) {
      GlobalDialog.showErrorDialog(context, message: state.errorMessage);
      return;
    }

    if (state.stateStatus == StateStatus.success) {
      GlobalDialog.showSuccessDialog(context, message: state.successMessage);
      return;
    }

    if (state.updated) {
      _router.maybePop();
    }
  }

  List<CategoryTagParam> _getSelectedTags(List<String> selectedTagIds) {
    final tags = _transactionType == TransactionType.expense
        ? _tagBloc.state.expenseTags
        : _tagBloc.state.incomeTags;

    return tags
        .where((tag) => selectedTagIds.contains(tag.tagId))
        .map((tag) => CategoryTagParam(
              label: tag.label,
              color: tag.color,
            ))
        .toList();
  }

  void _handleOnColorChanged(Color color) {
    setState(() {
      _initialColor = color;
    });
  }

  void _handleOnSelectIcon(int codePoint) {
    setState(() {
      _codePoint = codePoint;
    });
  }

  void _handleOnSaveCategory() {
    if (_labelFormKey.currentState?.validate() ?? false) {
      final String userId = _authBloc.state.authUserEntity!.userId;
      final String walletId = _walletBloc.state.selectedWallet!.walletId;

      if (_categoryId == null) {
        _categoryBloc.add(CategoryEvent.createCategory(
          dto: CreateCategoryDto(
            walletId: walletId,
            label: _labelController.text,
            color: _initialColor.value,
            transactionType: _transactionType,
            createdBy: userId,
            icon: _codePoint,
          ),
        ));
      } else {
        _categoryBloc.add(CategoryEvent.updateCategory(
          dto: UpdateCategoryDto(
            categoryId: _categoryId!,
            label: _labelController.text,
            color: _initialColor.value,
            icon: _codePoint,
          ),
        ));
      }
    }
  }

  Future<void> _handleOnAddTag() async {
    final List<String>? tags = await _router.push<List<String>>(
      TagRoute(
        transactionType: _transactionType,
        isSelecting: true,
        selectedTags: _categoryBloc.state.selectedTagIds,
      ),
    );

    _categoryBloc.add(
      CategoryEvent.saveSelectedTagIds(
        tagIds: tags ?? [],
      ),
    );
  }

  Future<void> _handleOnDeleteCategory() async {
    final bool? isConfirmed = await GlobalDialog.showVerificationDialog(
      context,
      message: 'Are you sure you want to delete this category?',
    );

    if (isConfirmed == true) {
      final String userId = _authBloc.state.authUserEntity!.userId;
      _categoryBloc.add(
        CategoryEvent.deleteCategory(
          dto: DeleteCategoryDto(
            categoryId: _categoryId!,
            userId: userId,
          ),
        ),
      );
    }
  }
}
