import 'package:flutter/material.dart';
import 'package:october_2020_practise_10/data/pie_data.dart';

class CustomIndicators extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: DataForPie.data
          .map(
            (el) => Container(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: buildIndicator(color: el.color, text: el.name),
            ),
          )
          .toList(),
    );
  }

  Row buildIndicator({
    @required Color color,
    @required String text,
    bool isSquare = false,
    double size = 16,
    Color textColor = const Color(0x48fa44da),
  }) {
    return Row(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: textColor),
        )
      ],
    );
  }
}
