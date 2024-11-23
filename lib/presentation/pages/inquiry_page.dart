import 'package:flutter/material.dart';
import 'package:wavid_teacher/common/style/text_styles.dart';
import 'package:wavid_teacher/presentation/widgets/button.dart';
import 'package:wavid_teacher/presentation/widgets/layout.dart';

class InquiryPage extends StatelessWidget {
  const InquiryPage({super.key});

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
                  const SizedBox(height: 200),
                  Row(
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text("회신 받은 이메일",
                            style: TextStyles(color: Colors.white, fontSize: 24)
                                .textStyleB),
                      ),
                      Container(
                        width: 600,
                        height: 42,
                        decoration: BoxDecoration(
                          color: const Color(0xFFECECEC),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(0),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 10),
                            hintText: "회신 받을 이메일을 입력해주세요.",
                            hintStyle: TextStyles(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 24,
                            ).textStyleR,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text("문의 제목",
                            style: TextStyles(color: Colors.white, fontSize: 24)
                                .textStyleB),
                      ),
                      Container(
                        width: 600,
                        height: 42,
                        decoration: BoxDecoration(
                          color: const Color(0xFFECECEC),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(0),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 10),
                            hintText: "문의 할 제목을 입력해주세요.",
                            hintStyle: TextStyles(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 24,
                            ).textStyleR,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text("문의 내용",
                            style: TextStyles(color: Colors.white, fontSize: 24)
                                .textStyleB),
                      ),
                      Container(
                        width: 600,
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color(0xFFECECEC),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(0),
                        child: TextField(
                          maxLines: null,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 10),
                            hintText: "문의 내용을 입력해 주세요.",
                            hintStyle: TextStyles(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 24,
                            ).textStyleR,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const WButton(
                    width: 274,
                    text: "문의하기",
                    isSingleColor: false,
                    isSingleFontColor: true,
                    fontColor: Colors.black,
                  )
                ],
              ),
            )));
  }
}
