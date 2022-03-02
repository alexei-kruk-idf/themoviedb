import 'dart:io';

import 'package:themoviedb/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.porterMovie).existsSync(), true);
    expect(File(AppImages.authLogo).existsSync(), true);
    expect(File(AppImages.logoMovie).existsSync(), true);
    expect(File(AppImages.porterLogoMovie).existsSync(), true);
  });
}
