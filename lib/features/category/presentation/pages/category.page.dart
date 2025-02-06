import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/router/app_router.dart';
import 'package:hani/core/widgets/atoms/app_bar_atom.dart';
import 'package:hani/features/category/presentation/templates/category/category_param.dart';
import 'package:hani/features/category/presentation/templates/category/category_template.dart';

import '../../../../core/sizes/app_sizes.dart';
import '../../../../core/widgets/atoms/floating_add_button_atom.dart';
import '../../../wallet/domain/entity/wallet.entity.dart';

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

  @override
  void initState() {
    super.initState();
    _transactionType = widget.transactionType;
    _router = AutoRouter.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return CategoryTemplate(
      param: CategoryParam(
          title: _transactionType == TransactionType.expense
              ? 'Expense Categories'
              : 'Income Categories',
          onBackPressed: _router.maybePop,
          addOnPressed: () {
            _router.push(const CategoryFormRoute());
          },
          onRefresh: () async {
            //
          },
          categoryItemParams: [
            CategoryItemParam(
                label: 'Grocery',
                color: Colors.brown,
                iconData: FontAwesomeIcons.cartShopping,
                categoryTags: [
                  CategoryTagParam(label: 'Needs', color: Colors.green),
                ],
                onTap: () {}),
            CategoryItemParam(
                label: 'Fast Food',
                color: Colors.red,
                iconData: FontAwesomeIcons.burger,
                categoryTags: [
                  CategoryTagParam(label: 'Wants', color: Colors.blueAccent),
                  CategoryTagParam(label: 'Wants', color: Colors.red),
                  CategoryTagParam(label: 'Wants', color: Colors.green),
                  CategoryTagParam(label: 'Wants', color: Colors.blueAccent),
                  CategoryTagParam(label: 'Wants', color: Colors.red),
                  CategoryTagParam(label: 'Wants', color: Colors.green),
                  CategoryTagParam(label: 'Wants', color: Colors.blueAccent),
                  CategoryTagParam(label: 'Wants', color: Colors.red),
                  CategoryTagParam(label: 'Wants', color: Colors.green),
                  CategoryTagParam(label: 'Wants', color: Colors.blueAccent),
                  CategoryTagParam(label: 'Wants', color: Colors.red),
                  CategoryTagParam(label: 'Wants', color: Colors.green),
                ],
                onTap: () {})
          ]),
    );
  }
}
