import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wavid_teacher/common/style/color.dart';
import 'package:wavid_teacher/common/style/text_styles.dart';
import 'package:wavid_teacher/resources/resources.dart';

class StockList extends StatelessWidget {
  const StockList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 485,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF252525),
                  ),
                  child: Row(
                    children: [
                      Text("1 ROUND",
                          style: TextStyles(color: WColors.gray, fontSize: 14)
                              .textStyleR),
                      const SizedBox(width: 10),
                      const Icon(Icons.keyboard_arrow_down,
                          color: Colors.white, size: 18)
                    ],
                  )),
              const SizedBox(width: 18),
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF252525),
                  ),
                  child: SvgPicture.asset(Svgs.uploadIcon)),
            ],
          ),
          const SizedBox(height: 70),
          // 종목 list
          Container(
              height: 635,
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 28),
              decoration: ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF484848)),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Table(
                children: [
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 34),
                      child: Text("종목",
                          style: TextStyles(color: Colors.white, fontSize: 17)
                              .textStyleSB),
                    )),
                    TableCell(
                        child: Text("뉴스 진위",
                            style: TextStyles(color: Colors.white, fontSize: 17)
                                .textStyleSB)),
                    TableCell(
                        child: Text("등락",
                            style: TextStyles(color: Colors.white, fontSize: 17)
                                .textStyleSB)),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 34),
                      child: Text("A COMPANY",
                          style: TextStyles(color: WColors.gray, fontSize: 17)
                              .textStyleR),
                    )),
                    TableCell(
                        child: Text("호재",
                            style: TextStyles(color: WColors.gray, fontSize: 17)
                                .textStyleR)),
                    TableCell(
                        child: Text("+120,500 (23%)",
                            style: TextStyles(color: WColors.red, fontSize: 17)
                                .textStyleR)),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 34),
                      child: Text("A COMPANY",
                          style: TextStyles(color: WColors.gray, fontSize: 17)
                              .textStyleR),
                    )),
                    TableCell(
                        child: Text("호재",
                            style: TextStyles(color: WColors.gray, fontSize: 17)
                                .textStyleR)),
                    TableCell(
                        child: Text("+120,500 (23%)",
                            style: TextStyles(color: WColors.red, fontSize: 17)
                                .textStyleR)),
                  ]),
                ],
              )),
        ],
      ),
    );
  }
}
