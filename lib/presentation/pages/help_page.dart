import 'package:flutter/material.dart';
import 'package:wavid_teacher/common/style/text_styles.dart';
import 'package:wavid_teacher/presentation/widgets/layout.dart';
import 'package:wavid_teacher/resources/resources.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Layout(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
            child: SizedBox(
              width: 1050,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "수업 시작하기",
                      style: TextStyles(color: Colors.white, fontSize: 36)
                          .textStyleB,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                      width: 1050,
                      child: Divider(color: Colors.white, thickness: 1)),
                  const SizedBox(height: 25),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "교실 생성하기",
                      style: TextStyles(color: Colors.white, fontSize: 24)
                          .textStyleB,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.circle, size: 8, color: Colors.white),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          "수업을 시작하기 위해 선생님께서는 경제 시장을 만들어주셔야 합니다. 경제 시장은 간단한 방법으로 만들 수 있습니다.",
                          style: TextStyles(color: Colors.white, fontSize: 24)
                              .textStyleR,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Image.asset(Images.helpPageImg, width: 506),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.circle, size: 8, color: Colors.white),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          "메인 화면에 가셔서 Create Room 버튼을 누르게 되면 자동으로 경제 시장이 생성되게 되며, 위 화면인 수업 대기실로 이동하게 됩니다.",
                          style: TextStyles(color: Colors.white, fontSize: 24)
                              .textStyleR,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.circle, size: 8, color: Colors.white),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          "학생들이 수업에 참여하기 위해선 대기실 좌측 상단에 QR코드와 핀코드를 공유해야 합니다. 학생들의 각자 휴대폰으로 QR코드를 찍어 바로 접속할 수 있고, Stock Learn 공식 사이트에 핀 코드를 입력하여 입장 할 수 있습니다.",
                          style: TextStyles(color: Colors.white, fontSize: 24)
                              .textStyleR,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.circle, size: 8, color: Colors.white),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          "학생들의 입장을 기다리면서 선생님들은 시장에 대한 설정을 할 수 있습니다. 대기실 좌측 라운드 수, 제한 시간, 초기 자본을 설정 할 수 있습니다. 모든 학생들이 입장한 뒤 게임 시작 버튼을 누르면 바로 경제 시장이 시작되게 됩니다.",
                          style: TextStyles(color: Colors.white, fontSize: 24)
                              .textStyleR,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
