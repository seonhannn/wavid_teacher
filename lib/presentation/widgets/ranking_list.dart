import 'package:flutter/material.dart';
import 'package:wavid_teacher/common/style/text_styles.dart';

class RankingList extends StatelessWidget {
  const RankingList({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
        width: 437,
        // height: screenHeight - 224,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("결과 조회",
                  style: TextStyles(color: Colors.white, fontSize: 40)
                      .textStyleSB),
              const SizedBox(height: 62),
              SizedBox(
                height: 485,
                child: Table(
                  children: [
                    TableRow(children: [
                      TableCell(
                          child: Padding(
                        padding: const EdgeInsets.only(bottom: 34),
                        child: Text("순위",
                            style: TextStyles(color: Colors.white, fontSize: 22)
                                .textStyleSB),
                      )),
                      TableCell(
                          child: Text("이름",
                              style:
                                  TextStyles(color: Colors.white, fontSize: 22)
                                      .textStyleSB)),
                      TableCell(
                          child: Text("총 자산",
                              style:
                                  TextStyles(color: Colors.white, fontSize: 22)
                                      .textStyleSB)),
                      TableCell(
                          child: Text("평가손익률",
                              style:
                                  TextStyles(color: Colors.white, fontSize: 22)
                                      .textStyleSB)),
                    ]),
                    TableRow(
                      children: [
                        TableCell(
                            child: Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: Text("1위",
                              style:
                                  TextStyles(color: Colors.white, fontSize: 20)
                                      .textStyleR),
                        )),
                        TableCell(
                            child: Text("김철수",
                                style: TextStyles(
                                        color: Colors.white, fontSize: 20)
                                    .textStyleR)),
                        TableCell(
                            child: Text("1,000,000",
                                style: TextStyles(
                                        color: Colors.white, fontSize: 20)
                                    .textStyleR)),
                        TableCell(
                            child: Text("+101%",
                                style: TextStyles(
                                        color: Colors.white, fontSize: 20)
                                    .textStyleR)),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                            child: Text("2위",
                                style: TextStyles(
                                        color: Colors.white, fontSize: 20)
                                    .textStyleR)),
                        TableCell(
                            child: Text("김철수",
                                style: TextStyles(
                                        color: Colors.white, fontSize: 20)
                                    .textStyleR)),
                        TableCell(
                            child: Text("1,000,000",
                                style: TextStyles(
                                        color: Colors.white, fontSize: 20)
                                    .textStyleR)),
                        TableCell(
                            child: Text("-101%",
                                style: TextStyles(
                                        color: Colors.white, fontSize: 20)
                                    .textStyleR)),
                      ],
                    )
                  ],
                ),
              )
            ]));
  }
}
