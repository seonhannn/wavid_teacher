import 'package:flutter/material.dart';
import 'package:wavid_teacher/common/style/color.dart';
import 'package:wavid_teacher/presentation/widgets/button.dart';

class RoundInfo extends StatelessWidget {
  const RoundInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("현재 진행 상황"),
        Divider(),
        Text("3 ROUND"),
        Row(children: [
          Text("남은 시간"),
          Text("05:32"),
        ]),
        WButton(
            text: "라운드 종료",
            isSingleColor: true,
            isSingleFontColor: true,
            fontColor: Colors.white),
        WButton(
            text: "다음 라운드",
            isSingleColor: true,
            isSingleFontColor: true,
            fontColor: Colors.white),
        WButton(
            text: "게임 종료",
            isSingleColor: true,
            isSingleFontColor: true,
            fontColor: WColors.red),
      ],
    );
  }
}
