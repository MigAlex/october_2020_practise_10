import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:october_2020_practise_10/data/bar_data.dart';

class CustomBarTitles {
  static SideTitles getTopBottomTitles() => SideTitles(
        showTitles: true,
        getTextStyles: (value) =>
            const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        margin: 10,
        getTitles: (double id) => BarData.barData
            .firstWhere((element) => element.id == id.toInt())
            .name,
      );

  static SideTitles getSideTitles() => SideTitles(
        showTitles: true,
        getTextStyles: (value) =>
            const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        rotateAngle: 90,
        interval: BarData.interval.toDouble(),
        margin: 10,
        reservedSize: 30,
        getTitles: (double value) => value == 0 ? '0' : '${value.toInt()}k',
      );
}
