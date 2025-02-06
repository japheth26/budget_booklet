import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hani/core/dependency_injection/injection.dart';
import 'package:hani/core/widgets/dialog/global_dialog.dart';
import 'package:hani/features/auth/domain/bloc/auth/auth_bloc.dart';
import 'package:hani/features/auth/presentation/templates/home_drawer/home_drawer_params.dart';
import 'package:hani/features/auth/presentation/templates/home_drawer/home_drawer_template.dart';

@RoutePage()
class HomeDrawerPage extends StatefulWidget {
  const HomeDrawerPage({super.key});

  @override
  State<HomeDrawerPage> createState() => _HomeDrawerPageState();
}

class _HomeDrawerPageState extends State<HomeDrawerPage> {
  late StackRouter _router;
  late AuthBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _router = AutoRouter.of(context);
    _authBloc = getIt<AuthBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return HomeDrawerTemplate(
      params: HomeDrawerParams(
        onBackPressed: () => _router.maybePop(),
        profileName: 'Japheth Paypa',
        options: [
          HomeDrawerOptionParam(
              iconData: FontAwesomeIcons.house, name: 'Option 1'),
          HomeDrawerOptionParam(
              iconData: FontAwesomeIcons.house, name: 'Option 2'),
          HomeDrawerOptionParam(
              iconData: FontAwesomeIcons.house, name: 'Option 3'),
          HomeDrawerOptionParam(
              iconData: FontAwesomeIcons.house, name: 'Option 4'),
          HomeDrawerOptionParam(
              iconData: FontAwesomeIcons.house, name: 'Option 5'),
        ],
        onLogout: () {
          GlobalDialog.showVerificationDialog(context,
                  message: 'Are you sure you want to leave?')
              .then(
            (bool? value) {
              if (value ?? false) {
                _authBloc.add(const AuthEvent.signOut());
                _router.maybePop();
              }
            },
          );
        },
      ),
    );
  }
}
