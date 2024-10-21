import 'package:flutter/material.dart';

class RankingList extends StatelessWidget {
  const RankingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 437,
      child: Column(
        children: [
          Table(
            columnWidths: {
              0: FractionColumnWidth(0.2),
              0: FractionColumnWidth(0.3),
              0: FractionColumnWidth(0.5),
            },
            children: [
              TableRow(children: [
                TableCell(
                    child:
                        Text("결과 조회", style: TextStyle(color: Colors.white))),
                TableCell(
                    child:
                        Text("결과 조회", style: TextStyle(color: Colors.white))),
                TableCell(
                    child:
                        Text("결과 조회", style: TextStyle(color: Colors.white))),
                TableCell(
                    child:
                        Text("결과 조회", style: TextStyle(color: Colors.white))),
              ]),
              TableRow(children: [
                TableCell(
                    child:
                        Text("결과 조회", style: TextStyle(color: Colors.white))),
                TableCell(
                    child:
                        Text("결과 조회", style: TextStyle(color: Colors.white))),
                TableCell(
                    child:
                        Text("결과 조회", style: TextStyle(color: Colors.white))),
                TableCell(
                    child:
                        Text("결과 조회", style: TextStyle(color: Colors.white))),
              ])
            ],
          )
        ],
      ),
    );
  }
}
