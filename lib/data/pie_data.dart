import 'package:flutter/material.dart';

class DataForPie{
  static List<PieData> data = [
    PieData(name: 'Flutter', value: 55, color: const Color(0xff1876da)),
    PieData(name: 'Dart', value: 25, color: const Color(0xff6ccca1)),
    PieData(name: 'Kotlin', value: 15, color: const Color(0xff0dd465)),
    PieData(name: 'Java', value: 5, color: const Color(0xdaad8831)),
  ];
}


class PieData{
  final String name;
  final double value;
  final Color color;

  PieData({this.name, this.value, this.color});

}