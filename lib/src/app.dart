import 'package:e_crm/src/config/appTheme.dart';
import 'package:e_crm/src/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
