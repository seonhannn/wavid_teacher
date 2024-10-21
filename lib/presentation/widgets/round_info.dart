import 'package:flutter/material.dart';
import 'package:wavid_teacher/common/style/color.dart';
import 'package:wavid_teacher/common/style/text_styles.dart';
import 'package:wavid_teacher/presentation/pages/main_page.dart';
import 'package:wavid_teacher/presentation/widgets/button.dart';

class RoundInfo extends StatelessWidget {
  const RoundInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 211,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("현재 진행 상황",
              style: TextStyles(color: Colors.white, fontSize: 24).textStyleSB),
          const Divider(height: 60, thickness: 1, color: WColors.gray),
          const SizedBox(height: 20),
          ShaderMask(
              shaderCallback: (bounds) => WColors.gradation.createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: Text("3 ROUND",
                  style: TextStyles(color: Colors.white, fontSize: 40)
                      .textStyleB)),
          const SizedBox(height: 18),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("남은 시간",
                style:
                    TextStyles(color: WColors.gray, fontSize: 20).textStyleR),
            Text("05:32",
                style: TextStyles(color: Colors.white, fontSize: 20).textStyleR)
          ]),
          const SizedBox(height: 400),
          const WButton(
              text: "라운드 종료",
              isSingleColor: true,
              isSingleFontColor: true,
              fontColor: Colors.white),
          const SizedBox(height: 18),
          const WButton(
              text: "다음 라운드",
              isSingleColor: true,
              isSingleFontColor: true,
              fontColor: Colors.white),
          const SizedBox(height: 18),
          WButton(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainPage()));
              },
              text: "게임 종료",
              isSingleColor: true,
              isSingleFontColor: true,
              fontColor: WColors.red),
        ]));
  }
}
