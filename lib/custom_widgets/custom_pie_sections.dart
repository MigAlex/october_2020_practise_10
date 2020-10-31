import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:october_2020_practise_10/data/pie_data.dart';

List<PieChartSectionData> getSections(int tappedIndex) => DataForPie.data
    .asMap()
    .map<int, PieChartSectionData>((key, data) {
      final isTouched = key == tappedIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 100 : 80;

      final value = PieChartSectionData(
        color: data.color,
        value: data.value,
        title: '${data.value}%',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
        ),
      );

      return MapEntry(key, value);
    })
    .values
    .toList();
