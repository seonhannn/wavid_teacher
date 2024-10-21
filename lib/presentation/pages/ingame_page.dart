import 'package:flutter/material.dart';
import 'package:wavid_teacher/presentation/widgets/layout.dart';
import 'package:wavid_teacher/presentation/widgets/ranking_list.dart';
import 'package:wavid_teacher/presentation/widgets/round_info.dart';
import 'package:wavid_teacher/presentation/widgets/stock_list.dart';

class IngamePage extends StatelessWidget {
  const IngamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Layout(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 73, horizontal: 40),
            child: Column(children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 현재 라운드 정보
                    const RoundInfo(),
                    if (screenWidth >= 880) ...[
                      const SizedBox(width: 135),
                      // 순위 리스트
                      const RankingList(),
                    ],
                    if (screenWidth >= 1440) ...[
                      const SizedBox(width: 84),
                      // 종목 리스트
                      const StockList()
                    ]
                  ]),
              if (screenWidth < 880) ...[
                const SizedBox(height: 60),
                const SizedBox(width: 135),
                // 순위 리스트
                const RankingList(),
              ],
              if (screenWidth < 1440) ...[
                const SizedBox(height: 60),
                const SizedBox(width: 84),
                // 종목 리스트
                const StockList()
              ]
            ])));
  }
}
