import 'package:flutter/material.dart';
import 'package:wavid_teacher/presentation/widgets/game_info.dart';
import 'package:wavid_teacher/presentation/widgets/layout.dart';
import 'package:wavid_teacher/presentation/widgets/waiting_students.dart';

class WaitingPage extends StatelessWidget {
  const WaitingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Layout(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
            child: Column(children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // left
                    const GameInfo(),
                    if (screenWidth > 1144) ...[
                      const SizedBox(width: 47),
                      // right
                      const WaitingStudents()
                    ]
                  ]),
              if (screenWidth <= 1144) ...[
                const SizedBox(height: 60),
                // right
                const WaitingStudents()
              ]
            ])));
  }
}
