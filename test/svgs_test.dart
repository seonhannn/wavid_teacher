import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:wavid_teacher/resources/resources.dart';

void main() {
  test('svgs assets test', () {
    expect(File(Svgs.arrowCircleDown).existsSync(), isTrue);
    expect(File(Svgs.arrowLeft).existsSync(), isTrue);
    expect(File(Svgs.bottomSheetBar).existsSync(), isTrue);
    expect(File(Svgs.circle).existsSync(), isTrue);
    expect(File(Svgs.companyIcon01).existsSync(), isTrue);
    expect(File(Svgs.companyIcon02).existsSync(), isTrue);
    expect(File(Svgs.companyIcon03).existsSync(), isTrue);
    expect(File(Svgs.companyIcon04).existsSync(), isTrue);
    expect(File(Svgs.electricity).existsSync(), isTrue);
    expect(File(Svgs.faqIcon).existsSync(), isTrue);
    expect(File(Svgs.inquiryIcon).existsSync(), isTrue);
    expect(File(Svgs.inviteStudentIcon).existsSync(), isTrue);
    expect(File(Svgs.logo).existsSync(), isTrue);
    expect(File(Svgs.settingIcon).existsSync(), isTrue);
    expect(File(Svgs.student).existsSync(), isTrue);
    expect(File(Svgs.vectorLeft).existsSync(), isTrue);
  });
}
