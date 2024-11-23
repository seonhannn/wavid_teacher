import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:wavid_teacher/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.helpPageImg).existsSync(), isTrue);
  });
}
