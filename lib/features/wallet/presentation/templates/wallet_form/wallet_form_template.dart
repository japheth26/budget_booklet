import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/features/wallet/presentation/organisms/wallet_form_organism.dart';
import 'package:hani/features/wallet/presentation/templates/wallet_form/wallet_form_params.dart';

import '../../../../../core/color/color_theme.dart';
import '../../../../../core/color/custom_color.dart';
import '../../../../../core/sizes/app_sizes.dart';

class WalletFormTemplate extends StatelessWidget {
  const WalletFormTemplate({super.key, this.params});

  final WalletFormParams? params;

  @override
  Widget build(BuildContext context) {
    final colorTheme = ColorThemeUtils.getColors(context);
    return Scaffold(
      backgroundColor: colorTheme.white_black,
      appBar: AppBar(
        foregroundColor: Colors.transparent,
        shadowColor: Colors.black,
        surfaceTintColor: CustomColor.primaryGreen,
        backgroundColor: colorTheme.primaryGreen_blueGrey800WithOpacity3,
        centerTitle: false,
        leading: GestureDetector(
          onTap: params?.onBackPressed,
          child: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.white,
            size: AppSizes.h_28,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: WalletFormOrganism(
          loading: params?.loading ?? false,
          existing: params?.existing ?? false,
          createRecordOnly: params?.createRecordOnly ?? false,
          nameController: params?.nameController,
          initialAmountController: params?.initialAmountController,
          spendAmountController: params?.spendAmountController,
          saveAmountController: params?.saveAmountController,
          goalController: params?.goalController,
          planController: params?.planController,
          nameGlobalKey: params?.nameGlobalKey,
          initialAmountGlobalKey: params?.initialAmountGlobalKey,
          spendAmountGlobalKey: params?.spendAmountGlobalKey,
          saveAmountGlobalKey: params?.saveAmountGlobalKey,
          nameValidator: params?.nameValidator,
          initialAmountValidator: params?.initialAmountValidator,
          spendAmountValidator: params?.spendAmountValidator,
          saveAmountValidator: params?.saveAmountValidator,
          onSubmit: params?.onSubmit,
        ),
      ),
    );
  }
}
