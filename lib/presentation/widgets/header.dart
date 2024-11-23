import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wavid_teacher/common/style/color.dart';
import 'package:wavid_teacher/common/style/text_styles.dart';
import 'package:wavid_teacher/presentation/pages/help_page.dart';
import 'package:wavid_teacher/presentation/pages/inquiry_page.dart';
import 'package:wavid_teacher/presentation/pages/main_page.dart';
import 'package:wavid_teacher/resources/resources.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
          height: 64,
          width: double.infinity,
          color: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            // left
            GestureDetector(
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Row(
                children: [
                  SvgPicture.asset(Svgs.logo, width: 21),
                  const SizedBox(width: 12),
                  Text(
                    "Stock Learn",
                    style: TextStyles(color: Colors.white, fontSize: 20)
                        .textStyleB,
                  )
                ],
              ),
            ),
            // right
            if (constraints.maxWidth > 700)
              Row(children: [
                SvgPicture.asset(Svgs.faqIcon, height: 15, width: 13),
                const SizedBox(width: 8),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HelpPage()));
                    },
                    child: Text("도움말",
                        style: TextStyles(color: WColors.gray).textStyleR)),
                const SizedBox(width: 60),
                SvgPicture.asset(Svgs.inquiryIcon, height: 15),
                const SizedBox(width: 8),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InquiryPage()));
                    },
                    child: Text("문의",
                        style: TextStyles(color: WColors.gray).textStyleR)),
                const SizedBox(width: 60),
                Text("오은영 선생님",
                    style: TextStyles(color: Colors.white, fontSize: 16)
                        .textStyleB),
                const SizedBox(width: 8),
                const Icon(Icons.keyboard_arrow_down,
                    color: Colors.white, size: 24)
              ])
          ]));
    });
  }
}
