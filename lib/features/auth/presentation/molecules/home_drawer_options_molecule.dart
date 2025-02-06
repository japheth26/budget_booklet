import 'package:flutter/material.dart';
import 'package:hani/features/auth/presentation/atoms/home_drawer_option_atom.dart';
import 'package:hani/features/auth/presentation/atoms/logout_button_atom.dart';

import '../templates/home_drawer/home_drawer_params.dart';

class HomeDrawerOptionsMolecule extends StatelessWidget {
  const HomeDrawerOptionsMolecule({super.key, this.options, this.onLogout});

  final List<HomeDrawerOptionParam>? options;
  final void Function()? onLogout;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...(options ?? []).map((e) {
          return HomeDrawerOptionAtom(
            name: e.name,
            iconData: e.iconData,
            onTap: e.onTap,
          );
        }),
        const SizedBox(height: 30),
        LogoutButtonAtom(
          label: 'log out',
          onPressed: onLogout,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
