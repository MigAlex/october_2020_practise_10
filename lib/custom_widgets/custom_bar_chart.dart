import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:october_2020_practise_10/data/bar_data.dart';

import 'custom_bar_titles.dart';

class CustomBarChart extends StatelessWidget {
  final double barWidth = 20;

  @override
  Widget build(BuildContext context) => BarChart(
        BarChartData(
          alignment: BarChartAlignment.center,
          maxY: 20,
          minY: -20,
          groupsSpace: 12,
          barTouchData: BarTouchData(enabled: true),
          titlesData: FlTitlesData(
            topTitles: CustomBarTitles.getTopBottomTitles(),
            bottomTitles: CustomBarTitles.getTopBottomTitles(),
            leftTitles: CustomBarTitles.getSideTitles(),
            rightTitles: CustomBarTitles.getSideTitles(),
          ),
          gridData: FlGridData(
            checkToShowHorizontalLine: (value) => value % BarData.interval == 0,
            getDrawingHorizontalLine: (value) {
              if (value == 0) {
                return FlLine(
                  color: const Color(0xff363f53),
                  strokeWidth: 3,
                );
              } else {
                return FlLine(
                  color: const Color(0xffFa2747),
                  strokeWidth: 0.8,
                );
              }
            },
          ),
          barGroups: BarData.barData
              .map(
                (data) => BarChartGroupData(
                  x: data.id,
                  barRods: [
                    BarChartRodData(
                      y: data.yAxis,
                      width: barWidth,
                      colors: [data.color],
                      borderRadius: data.yAxis > 0
                          ? BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            )
                          : BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      );
}
