import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/features/dashboard/presentation/templates/dashboard/dashboard_params.dart';
import 'package:hani/features/dashboard/presentation/templates/dashboard/dashboard_template.dart';
import 'package:hani/features/wallet/domain/bloc/wallet/wallet_bloc.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late WalletBloc _walletBloc;

  late WalletEntity? _walletEntity;

  @override
  void initState() {
    super.initState();
    _walletBloc = getIt<WalletBloc>();
    _walletEntity = _walletBloc.state.selectedWallet;
  }

  @override
  Widget build(BuildContext context) {
    return DashboardTemplate(
      dashboardParams: DashboardParams(
          isLoading: false,
          income: 5000.25,
          expenses: 2523.50,
          balanceLabel: 'Dec 2024 Balance',
          balancePieChartData: [
            DashboardPieChartData(
              name: 'Initial',
              color: Colors.yellow,
              amount: 5000,
              percent: 100,
            ),
            // DashboardPieChartData(
            //   name: 'Expenses',
            //   color: Colors.red,
            //   amount: 2000,
            //   percent: 30,
            // )
          ],
          incomePieChartData: [
            // DashboardPieChartData(
            //   name: 'Salary',
            //   color: Colors.green,
            //   amount: 5000,
            //   percent: 20,
            // ),
            // DashboardPieChartData(
            //   name: 'Store Profit 1',
            //   color: Colors.deepPurple,
            //   amount: 5000,
            //   percent: 30,
            // ),
            // DashboardPieChartData(
            //   name: 'Store Profit 2',
            //   color: CustomColor.indigoBlue,
            //   amount: 5000,
            //   percent: 20,
            // ),
          ],
          expensesPieChartData: [
            // DashboardPieChartData(
            //   name: 'Groceries',
            //   color: Colors.brown,
            //   amount: 5000,
            //   percent: 20,
            // ),
            // DashboardPieChartData(
            //   name: 'Water',
            //   color: Colors.blue,
            //   amount: 5000,
            //   percent: 30,
            // ),
            // DashboardPieChartData(
            //   name: 'Electricity',
            //   color: Colors.amber,
            //   amount: 5000,
            //   percent: 20,
            // ),
            // DashboardPieChartData(
            //   name: 'Mortgage Mortgage Mortgage',
            //   color: Colors.pink,
            //   amount: 5000,
            //   percent: 30,
            // ),
          ],
          budgetList: [
            // BudgetLinearIndicatorParam(
            //   budget: 1000,
            //   expenses: 320,
            //   label: 'School Allowance',
            //   from: DateTime.now().subtract(const Duration(days: 20)),
            //   to: DateTime.now(),
            // ),
            // BudgetLinearIndicatorParam(
            //   budget: 1000,
            //   expenses: 320,
            //   label: 'Transportation',
            //   from: DateTime.now().subtract(const Duration(days: 20)),
            //   to: DateTime.now(),
            // ),
            // BudgetLinearIndicatorParam(
            //   budget: 1000,
            //   expenses: 320,
            //   label: 'Food',
            //   from: DateTime.now().subtract(const Duration(days: 20)),
            //   to: DateTime.now(),
            // )
          ],
          incomeSpots: const [
            // FlSpot(20, 100),
            // FlSpot(21, 40),
            // FlSpot(22, 500),
            // FlSpot(23, 450),
            // FlSpot(24, 60),
            // FlSpot(25, 123),
            // FlSpot(26, 76),
          ],
          expenseSpots: const [
            // FlSpot(20, 40),
            // FlSpot(21, 54),
            // FlSpot(22, 67),
            // FlSpot(23, 56),
            // FlSpot(24, 90),
            // FlSpot(25, 500),
            // FlSpot(26, 450),
          ],
          floatingButtonOptions: [
            DashboardFloatingButtonOption(
              label: 'Add Expense',
              iconData: FontAwesomeIcons.cartPlus,
              onTap: () {
                //
              },
            ),
            DashboardFloatingButtonOption(
              label: 'Add Income',
              iconData: FontAwesomeIcons.moneyBillTrendUp,
              onTap: () {
                //
              },
            ),
            DashboardFloatingButtonOption(
              label: 'Add Budget',
              iconData: FontAwesomeIcons.moneyBills,
              onTap: () {
                //
              },
            ),
          ]),
    );
  }
}
