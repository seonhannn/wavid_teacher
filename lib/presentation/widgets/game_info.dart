import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wavid_teacher/common/style/color.dart';
import 'package:wavid_teacher/common/style/text_styles.dart';
import 'package:wavid_teacher/presentation/pages/ingame_page.dart';
import 'package:wavid_teacher/presentation/pages/main_page.dart';
import 'package:wavid_teacher/presentation/pages/waiting_page.dart';
import 'package:wavid_teacher/presentation/widgets/button.dart';
import 'package:wavid_teacher/resources/resources.dart';

class GameInfo extends StatelessWidget {
  const GameInfo({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle =
        TextStyles(color: const Color(0xFFA5A5A5), fontSize: 20).textStyleR;
    TextStyle valueStyle =
        TextStyles(color: Colors.white, fontSize: 20).textStyleR;

    return SizedBox(
        width: 210,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // QR
          Container(
              width: 114,
              height: 114,
              margin: const EdgeInsets.only(bottom: 40),
              color: WColors.defaultButtonColor),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(Svgs.electricity, width: 24),
              Text("88712",
                  style:
                      TextStyles(color: WColors.gray, fontSize: 20).textStyleSB)
            ],
          ),
          const Divider(color: WColors.gray, thickness: 1, height: 120),
          // game info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("게임",
                  style: TextStyles(color: Colors.white, fontSize: 24)
                      .textStyleSB),
              SvgPicture.asset(Svgs.settingIcon, width: 38),
            ],
          ),
          const SizedBox(height: 18),
          Text("라운드 수", style: titleStyle),
          Text("10", style: valueStyle),
          const SizedBox(height: 18),
          Text("제한 시간", style: titleStyle),
          Text("4 : 00", style: valueStyle),
          const SizedBox(height: 18),
          Text("초기 자본", style: titleStyle),
          Text("3,000,000", style: valueStyle),
          const SizedBox(height: 70),
          WButton(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const IngamePage()));
            },
            text: "게임 시작",
            isSingleColor: true,
            isSingleFontColor: false,
            fontColor: Colors.white,
            width: 210,
          ),
          const SizedBox(height: 18),
          WButton(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainPage()));
            },
            text: "나가기",
            isSingleColor: true,
            isSingleFontColor: true,
            fontColor: WColors.red,
            width: 210,
          )
        ]));
  }
}
