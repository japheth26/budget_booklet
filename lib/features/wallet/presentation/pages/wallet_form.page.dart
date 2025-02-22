import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hani/core/controller/masked_text_controller.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/core/widgets/dialog/global_dialog.dart';
import 'package:hani/features/auth/domain/bloc/auth/auth_bloc.dart';
import 'package:hani/features/monthly_record/data/dto/create_monthly_record.dto.dart';
import 'package:hani/features/monthly_record/domain/bloc/monthly_record/monthly_record_bloc.dart';
import 'package:hani/features/wallet/data/dto/create_wallet.dto.dart';
import 'package:hani/features/wallet/domain/bloc/wallet/wallet_bloc.dart';
import 'package:hani/features/wallet/domain/entity/wallet.entity.dart';
import 'package:hani/features/wallet/presentation/templates/wallet_form/wallet_form_params.dart';
import 'package:hani/features/wallet/presentation/templates/wallet_form/wallet_form_template.dart';

import '../../../../core/state_status/state_status.dart';
import '../../../../core/validator/guard.dart';

@RoutePage()
class WalletFormPage extends StatefulWidget {
  const WalletFormPage({super.key, this.wallet, this.createRecordOnly = false});

  final WalletEntity? wallet;
  final bool createRecordOnly;

  @override
  State<WalletFormPage> createState() => _WalletFormPageState();
}

class _WalletFormPageState extends State<WalletFormPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _initialAmountController =
      MoneyMaskedTextController();
  final TextEditingController _spendAmountController =
      MoneyMaskedTextController();
  final TextEditingController _saveAmountController =
      MoneyMaskedTextController();
  final TextEditingController _goalController = TextEditingController();
  final TextEditingController _planController = TextEditingController();

  final GlobalKey<FormFieldState> _nameGlobalKey = GlobalKey();
  final GlobalKey<FormFieldState> _initialAmountGlobalKey = GlobalKey();
  final GlobalKey<FormFieldState> _spendAmountGlobalKey = GlobalKey();
  final GlobalKey<FormFieldState> _saveAmountGlobalKey = GlobalKey();

  late StackRouter _router;
  late WalletBloc _walletBloc;
  late AuthBloc _authBloc;
  late MonthlyRecordBloc _monthlyRecordBloc;

  late String _userId;
  late WalletEntity? _wallet;
  late bool _createRecordOnly;

  @override
  void initState() {
    super.initState();

    _router = AutoRouter.of(context);
    _walletBloc = getIt<WalletBloc>();
    _authBloc = getIt<AuthBloc>();
    _monthlyRecordBloc = getIt<MonthlyRecordBloc>();

    _userId = _authBloc.state.authUserEntity!.userId;

    _wallet = widget.wallet;
    _createRecordOnly = widget.createRecordOnly;

    _initializeData();
  }

  void _initializeData() {
    _nameController.text = _wallet?.name ?? '';
  }

  @override
  void dispose() {
    super.dispose();

    _nameController.dispose();
    _initialAmountController.dispose();
    _spendAmountController.dispose();
    _saveAmountController.dispose();
    _goalController.dispose();
    _planController.dispose();

    _nameGlobalKey.currentState?.dispose();
    _initialAmountGlobalKey.currentState?.dispose();
    _spendAmountGlobalKey.currentState?.dispose();
    _saveAmountGlobalKey.currentState?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WalletBloc, WalletState>(
      bloc: _walletBloc,
      listener: _handleWalletListener,
      builder: (context, state) {
        return WalletFormTemplate(
          params: WalletFormParams(
            loading: state.stateStatus == StateStatus.loading,
            createRecordOnly: _createRecordOnly,
            onBackPressed: () => _router.maybePop(),
            nameController: _nameController,
            initialAmountController: _initialAmountController,
            spendAmountController: _spendAmountController,
            saveAmountController: _saveAmountController,
            goalController: _goalController,
            planController: _planController,
            nameGlobalKey: _nameGlobalKey,
            initialAmountGlobalKey: _initialAmountGlobalKey,
            spendAmountGlobalKey: _spendAmountGlobalKey,
            saveAmountGlobalKey: _saveAmountGlobalKey,
            nameValidator: _handleNameValidator,
            initialAmountValidator: _handleInitialAmountValidator,
            spendAmountValidator: _handleSpendAmountValidator,
            saveAmountValidator: _handleSaveAmountValidator,
            onSubmit: _handleSubmit,
          ),
        );
      },
    );
  }

  void _clearFields() {
    _initialAmountController.clear();
    _nameController.clear();
  }

  void _handleWalletListener(BuildContext context, WalletState state) {
    if (state.walletAdded) {
      _handleCreateMonthlyRecord(state.addedWallet!);
      _clearFields();
      _router.maybePop();
    }
  }

  String? _handleNameValidator(value) {
    return Guard.againstEmptyString('Name', value);
  }

  String? _handleInitialAmountValidator(value) {
    const String name = 'Initial Amount';
    return Guard.combine([
      Guard.againstEmptyString(name, value),
      Guard.againstInvalidDouble(name, value),
      Guard.againstZero(name, value)
    ]);
  }

  String? _handleSpendAmountValidator(value) {
    const String name = 'Spending Amount';
    return Guard.combine([
      Guard.againstEmptyString(name, value),
      Guard.againstInvalidDouble(name, value),
      Guard.againstZero(name, value)
    ]);
  }

  String? _handleSaveAmountValidator(value) {
    const String name = 'Saving Amount';
    return Guard.combine([
      Guard.againstEmptyString(name, value),
      Guard.againstInvalidDouble(name, value),
      Guard.againstZero(name, value)
    ]);
  }

  void _handleSubmit() {
    final isNameValid = _nameGlobalKey.currentState!.validate();
    final isInitialAmountValid =
        _initialAmountGlobalKey.currentState!.validate();
    final isSpendingAmountValid =
        _spendAmountGlobalKey.currentState!.validate();
    final isSavingAmountValid = _saveAmountGlobalKey.currentState!.validate();

    if (isNameValid &&
        isInitialAmountValid &&
        isSpendingAmountValid &&
        isSavingAmountValid &&
        !_createRecordOnly) {
      _walletBloc.add(
        WalletEvent.createWallet(
          dto: CreateWalletDto(
            name: _nameController.text,
            createdBy: _userId,
          ),
        ),
      );
    }

    if (isNameValid &&
        isInitialAmountValid &&
        isSpendingAmountValid &&
        isSavingAmountValid &&
        _createRecordOnly) {
      if (_wallet == null) {
        GlobalDialog.showErrorDialog(context, message: 'Wallet not found!');
        return;
      }

      _handleCreateMonthlyRecord(_wallet!);

      _router.maybePop();
    }
  }

  void _handleCreateMonthlyRecord(WalletEntity wallet) {
    final initialAmount =
        double.parse(_initialAmountController.text.replaceAll(',', ''));
    final spendingAmount =
        double.parse(_spendAmountController.text.replaceAll(',', ''));
    final saveAmount =
        double.parse(_saveAmountController.text.replaceAll(',', ''));
    final month = DateTime.now().month;
    final year = DateTime.now().year;

    final dto = CreateMonthlyRecordDto(
      walletId: wallet.walletId,
      initialAmount: initialAmount,
      spendingAmount: spendingAmount,
      savingAmount: saveAmount,
      goal: _goalController.text,
      plan: _planController.text,
      month: month,
      year: year,
    );
    _monthlyRecordBloc.add(MonthlyRecordEvent.createMonthlyRecord(dto: dto));
  }
}
