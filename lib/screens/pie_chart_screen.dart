import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:october_2020_practise_10/custom_widgets/custom_indicators.dart';
import 'package:october_2020_practise_10/custom_widgets/custom_pie_sections.dart';

class PieChartScreen extends StatefulWidget {
  @override
  _PieChartScreenState createState() => _PieChartScreenState();
}

class _PieChartScreenState extends State<PieChartScreen> {
  int tappedIndex;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(
                  touchCallback: (pieTouchResponse) {
                    setState(() {
                      if (pieTouchResponse.touchInput is FlLongPressEnd ||
                          pieTouchResponse.touchInput is FlPanEnd) {
                        tappedIndex = -1;
                      } else {
                        tappedIndex = pieTouchResponse.touchedSectionIndex;
                      }
                    });
                  },
                ),
                borderData: FlBorderData(show: false),
                sectionsSpace: 0,
                centerSpaceRadius: 36,
                sections: getSections(tappedIndex),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: CustomIndicators(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
