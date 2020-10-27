import 'package:flutter/material.dart';
import 'package:october_2020_practise_10/model/data_for_charts.dart';

class BarData {
  static int interval = 5;
  static List<DataForCharts> barData = [
    DataForCharts(
      id: 0,
      name: 'Mon',
      yAxis: 15,
      color: Color(0xff19bfff),
    ),
    DataForCharts(
      name: 'Tue',
      id: 1,
      yAxis: -12,
      color: Color(0xffff4d94),
    ),
    DataForCharts(
      name: 'Wed',
      id: 2,
      yAxis: 11,
      color: Color(0xff2bdb90),
    ),
    DataForCharts(
      name: 'Thu',
      id: 3,
      yAxis: 10,
      color: Color(0xffffdd80),
    ),
    DataForCharts(
      name: 'Fri',
      id: 4,
      yAxis: -5,
      color: Color(0xff2bdb90),
    ),
    DataForCharts(
      name: 'Sat',
      id: 5,
      yAxis: -17,
      color: Color(0xffffdd80),
    ),
    DataForCharts(
      name: 'Sun',
      id: 6,
      yAxis: 5,
      color: Color(0xffff4d94),
    ),
  ];
}
