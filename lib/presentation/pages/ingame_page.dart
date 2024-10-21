import 'package:flutter/material.dart';
import 'package:wavid_teacher/presentation/widgets/layout.dart';
import 'package:wavid_teacher/presentation/widgets/ranking_list.dart';
import 'package:wavid_teacher/presentation/widgets/round_info.dart';
import 'package:wavid_teacher/presentation/widgets/stock_list.dart';

class IngamePage extends StatelessWidget {
  const IngamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
        child: Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 현재 라운드 정보
          RoundInfo(),
          // 순위 리스트
          RankingList(),
          // 종목 리스트
          StockList()
        ],
      )
    ]));
  }
}
