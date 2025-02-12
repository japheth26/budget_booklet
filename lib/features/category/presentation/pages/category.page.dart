import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/core/router/app_router.dart';
import 'package:hani/features/category/presentation/templates/category/category_param.dart';
import 'package:hani/features/category/presentation/templates/category/category_template.dart';
import 'package:hani/features/tag/domain/bloc/tag/tag_bloc.dart';
import 'package:hani/features/tag/domain/entities/tag.entity.dart';

import '../../../wallet/domain/entity/wallet.entity.dart';
import '../../domain/bloc/category/category_bloc.dart';
import '../../domain/entities/category.entity.dart';
import '../../domain/entities/category_tag.entity.dart';

@RoutePage()
class CategoryPage extends StatefulWidget {
  const CategoryPage({
    super.key,
    required this.transactionType,
  });
  final String transactionType;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  late StackRouter _router;
  late String _transactionType;

  late CategoryBloc _categoryBloc;
  late TagBloc _tagBloc;

  @override
  void initState() {
    super.initState();
    _transactionType = widget.transactionType;
    _router = AutoRouter.of(context);

    _categoryBloc = getIt<CategoryBloc>();
    _tagBloc = getIt<TagBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      bloc: _categoryBloc,
      builder: (context, state) {
        return CategoryTemplate(
          param: CategoryParam(
            title: _transactionType == TransactionType.expense
                ? 'Expense Categories'
                : 'Income Categories',
            onBackPressed: _router.maybePop,
            addOnPressed: () {
              _router
                  .push(CategoryFormRoute(transactionType: _transactionType));
            },
            onRefresh: () async {
              //
            },
            categoryItemParams: _getCategoryItemsParams(
              _transactionType == TransactionType.expense
                  ? state.expenseCategories
                  : state.incomeCategories,
            ),
          ),
        );
      },
    );
  }

  _getCategoryItemsParams(List<CategoryEntity> categories) {
    final List<TagEntity> tags = _transactionType == TransactionType.expense
        ? _tagBloc.state.expenseTags
        : _tagBloc.state.incomeTags;

    return categories.where((e) => !e.deleted).map((e) {
      final categoryTags =
          _categoryBloc.state.tagsByCategoryId[e.categoryId] ?? [];
      final selectedTags = tags
          .where((tag) => categoryTags.any((e) => e.tagId == tag.tagId))
          .toList();

      return CategoryItemParam(
        label: e.label,
        color: e.color,
        iconData: IconData(e.icon, fontFamily: 'MaterialIcons'),
        categoryTags: selectedTags.map((e) {
          return CategoryTagParam(label: e.label, color: e.color);
        }).toList(),
        onTap: () {
          _router.push(
            CategoryFormRoute(
              transactionType: _transactionType,
              categoryId: e.categoryId,
            ),
          );
        },
      );
    }).toList();
  }
}
