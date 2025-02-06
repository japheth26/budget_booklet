import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/sizes/app_sizes.dart';
import 'package:hani/features/wallet/presentation/organisms/start_tracker_form_organism.dart';
import 'package:hani/features/wallet/presentation/templates/start_tracker/start_tracker_params.dart';

import '../../../../../core/color/custom_color.dart';

class StartTrackerTemplate extends StatelessWidget {
  const StartTrackerTemplate({
    super.key,
    this.inputParams,
    this.buttonParams,
  });

  final StartTrackerInputParams? inputParams;
  final StartTrackerButtonParams? buttonParams;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _closeKeyboard(context);
      },
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.transparent,
          shadowColor: Colors.black,
          surfaceTintColor: CustomColor.primaryGreen,
          centerTitle: false,
          leading: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: CustomColor.primaryGreen,
            size: AppSizes.h_28,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 180,
                child: SvgPicture.asset('assets/images/investing.svg'),
              ),
              StartTrackerFormOrganism(
                inputParams: inputParams,
                buttonParams: buttonParams,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _closeKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}
