import 'package:flutter/material.dart';

class StockList extends StatelessWidget {
  const StockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 485,
        height: 635,
        decoration: ShapeDecoration(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF484848)),
            borderRadius: BorderRadius.circular(20),
          ),
        ));
  }
}
