import 'package:flutter/material.dart';

class HomeDrawerOptionParam {
  final IconData? iconData;
  final String? name;
  final void Function()? onTap;

  HomeDrawerOptionParam({this.iconData, this.name, this.onTap});
}

class HomeDrawerParams {
  final String? profileName;
  final List<HomeDrawerOptionParam>? options;
  final void Function()? onLogout;
  final void Function()? onBackPressed;

  HomeDrawerParams({
    this.profileName,
    this.options,
    this.onLogout,
    this.onBackPressed,
  });
}
