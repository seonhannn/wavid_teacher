import 'package:flutter/material.dart';
import 'package:wavid_teacher/common/style/color.dart';
import 'package:wavid_teacher/common/style/text_styles.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 194,
        height: 98,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Tester",
              style: TextStyles(color: Colors.white, fontSize: 18).textStyleSB),
          const SizedBox(height: 12),
          Text("@tester",
              style: TextStyles(color: WColors.gray, fontSize: 15).textStyleR)
        ]));
  }
}
