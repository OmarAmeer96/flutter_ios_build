import 'package:amantac/amantac.dart';
import 'package:amantac/core/di/dependency_injection.dart';
import 'package:amantac/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  // This is used to fix the texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(
    Amantac(
      appRouter: AppRouter(),
    ),
  );
}
