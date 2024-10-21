import 'package:flutter/material.dart';
import 'package:wavid_teacher/common/style/color.dart';
import 'package:wavid_teacher/presentation/widgets/header.dart';

class Layout extends StatelessWidget {
  final Widget child;
  const Layout({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: WColors.black,
            child: SingleChildScrollView(
              child: Column(children: [const Header(), child]),
            )));
  }
}
