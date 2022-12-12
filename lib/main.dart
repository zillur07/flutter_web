import 'package:flutter/material.dart';
import 'package:flutter_web/responsive/desktop_scaffold.dart';
import 'package:flutter_web/responsive/mobile_scaffold.dart';
import 'package:flutter_web/responsive/responsive_Layout.dart';
import 'package:flutter_web/responsive/teblet_scaffold.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TebletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
