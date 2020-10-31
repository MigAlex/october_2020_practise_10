import 'package:flutter/material.dart';

import 'screen_exporter.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: [
              BarChartScreen(),
              LineChartScreen(),
              PieChartScreen()

            ],
          ),
        ),
      );
}