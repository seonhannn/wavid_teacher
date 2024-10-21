import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wavid_teacher/common/style/color.dart';
import 'package:wavid_teacher/common/style/text_styles.dart';
import 'package:wavid_teacher/presentation/widgets/button.dart';
import 'package:wavid_teacher/presentation/widgets/user_card.dart';
import 'package:wavid_teacher/resources/resources.dart';

class WaitingStudents extends StatelessWidget {
  const WaitingStudents({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        width: 806,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Class Room",
              style: TextStyles(color: Colors.white, fontSize: 40).textStyleSB),
          Row(children: [
            SvgPicture.asset(Svgs.inviteStudentIcon, width: 44),
            const SizedBox(width: 17),
            const WButton(
              text: "24명 대기중",
              isSingleColor: false,
              isSingleFontColor: true,
              fontColor: WColors.black,
              fontSize: 14,
              radius: 10,
              paddingWidth: 20,
              paddingHeight: 0,
              height: 40,
            )
          ])
        ]),
      ),
      const SizedBox(height: 26),
      Text("선생님이 게임을 시작하기 전까지 대기하세요.",
          style: TextStyles(color: WColors.gray, fontSize: 18).textStyleR),
      const SizedBox(height: 72),
      SizedBox(
        width: 806,
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: List.generate(30, (index) {
            return UserCard(
                // name: '황윤선',
                // username: '@ashley',
                );
          }),
        ),
      ),
    ]);
  }
}
