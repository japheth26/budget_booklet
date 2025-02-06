import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hani/core/router/app_router.dart';
import 'package:hani/features/income/presentation/templates/income/income_params.dart';
import 'package:hani/features/income/presentation/templates/income/income_template.dart';

@RoutePage()
class IncomePage extends StatefulWidget {
  const IncomePage({super.key});

  @override
  State<IncomePage> createState() => _IncomePageState();
}

class _IncomePageState extends State<IncomePage> {
  late StackRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AutoRouter.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return IncomeTemplate(
      incomeParams: IncomeParams(
          totalIncomeValue: '20,000.00',
          incomeItemParams: [
            IncomeItemParam(
              faIconName: 'apple',
              title: 'Work',
              leftSubtitle: '500.00',
              rightSubtitle: 'Dec 15, 2024',
            ),
            IncomeItemParam(
              faIconName: 'apple',
              title: 'Work',
              leftSubtitle: '500.00',
              rightSubtitle: 'Dec 15, 2024',
            ),
            IncomeItemParam(
              faIconName: 'apple',
              title: 'Work',
              leftSubtitle: '500.00',
              rightSubtitle: 'Dec 15, 2024',
            ),
            IncomeItemParam(
              faIconName: 'apple',
              title: 'Work',
              leftSubtitle: '500.00',
              rightSubtitle: 'Dec 15, 2024',
            ),
            IncomeItemParam(
              faIconName: 'apple',
              title: 'Work',
              leftSubtitle: '500.00',
              rightSubtitle: 'Dec 15, 2024',
            ),
          ],
          addOnPressed: () {
            _router.push(
              const AddUpdateIncomeRoute(),
            );
          }),
    );
  }
}
