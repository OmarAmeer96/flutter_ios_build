import 'package:flutter/material.dart';
import 'package:shop_flow/core/routing/app_router.dart';
import 'package:shop_flow/core/shared_prefs/shared_prefs.dart';
import 'package:shop_flow/shop_flow.dart';

void main() async {
  // Make sure WidgetsBinding is initialized before Firebase (runApp won't do be triggered before them).
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Shared Preferences
  await initSharedPrefsAndGetData();

  runApp(
    ShopFlow(
      appRouter: AppRouter(),
    ),
  );
}

Future<void> initSharedPrefsAndGetData() async {
  await SharedPrefs.cacheintialization();
}
