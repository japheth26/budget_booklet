import 'package:flutter/material.dart';
import 'package:hani/features/auth/presentation/atoms/home_drawer_profile_atom.dart';
import 'package:hani/features/auth/presentation/atoms/home_drawer_profile_name_atom.dart';

class HomeDrawerProfileMolecule extends StatelessWidget {
  const HomeDrawerProfileMolecule({super.key, this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const HomeDrawerProfileAtom(),
        const SizedBox(height: 10),
        HomeDrawerProfileNameAtom(name: name),
        const SizedBox(height: 5),
      ],
    );
  }
}
