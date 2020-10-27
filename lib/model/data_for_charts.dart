import 'package:flutter/material.dart';

class DataForCharts {
  final int id;
  final String name;
  final double yAxis;
  final Color color;

  const DataForCharts({
    @required this.name,
    @required this.id,
    @required this.yAxis,
    @required this.color,
  });
}