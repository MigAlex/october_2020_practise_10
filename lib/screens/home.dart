import 'package:flutter/material.dart';
import 'package:october_2020_practise_10/screens/bar_chart_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: PageView(
            children: [
              BarChartScreen(),
            ],
          ),
        ),
      );
}