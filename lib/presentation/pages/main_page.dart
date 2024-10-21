import 'package:flutter/material.dart';
import 'package:wavid_teacher/common/style/color.dart';
import 'package:wavid_teacher/common/style/text_styles.dart';
import 'package:wavid_teacher/presentation/pages/waiting_page.dart';
import 'package:wavid_teacher/presentation/widgets/button.dart';
import 'package:wavid_teacher/presentation/widgets/layout.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Layout(
        child: Padding(
      padding: EdgeInsets.only(top: (screenHeight - 64) / 4),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("게임을 통해 배우는 주식 모의 투자 공부",
                style:
                    TextStyles(color: WColors.gray, fontSize: 20).textStyleR),
            const SizedBox(height: 26),
            Text("Stock Learn에서\n경제와 투자의 재미를.",
                style: TextStyles(color: Colors.white, fontSize: 50).textStyleB,
                textAlign: TextAlign.center),
            const SizedBox(height: 68),
            WButton(
              width: 300,
              text: "Create Room",
              isSingleColor: false,
              isSingleFontColor: true,
              fontColor: WColors.black,
              paddingWidth: 75,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WaitingPage()));
              },
            )
          ]),
    ));
  }
}
