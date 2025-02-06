import 'package:flutter/material.dart';

class HomePieChartData {
  final Color? color;
  final double? value;

  HomePieChartData({this.color, this.value});
}

class HomeItemParam {
  final String? name;
  final String? balance;
  final String? walletNumber;
  final List<HomePieChartData>? pieChartDataList;
  final void Function()? onTap;

  HomeItemParam({
    this.name,
    this.balance,
    this.walletNumber,
    this.pieChartDataList,
    this.onTap,
  });
}

class HomeParams {
  final bool loading;
  final List<HomeItemParam>? homeItemParams;
  final void Function()? addOnPressed;
  final Future<void> Function()? onRefresh;
  final void Function()? drawerOnPressed;

  HomeParams({
    this.loading = false,
    this.homeItemParams,
    this.addOnPressed,
    this.onRefresh,
    this.drawerOnPressed,
  });
}
