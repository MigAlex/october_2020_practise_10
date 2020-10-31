import 'package:flutter/material.dart';
import 'package:october_2020_practise_10/custom_widgets/custom_line_chart.dart';

class LineChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        color: const Color(0xff020227),
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: CustomLineChart(),
        ),
      );
}