import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../config/base.dart';

class ResponsiveLayout extends StatelessWidget with Base {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;
  ResponsiveLayout({
    required this.desktopScaffold,
    required this.mobileScaffold,
    required this.tabletScaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints responsDevice) {
      if (responsDevice.maxWidth < 550) {
        categoryC.viewMode.value = 'mobileScaffold';
        return mobileScaffold;
      }
      if (responsDevice.maxWidth < 1100) {
        categoryC.viewMode.value = 'tabletScaffold';
        return tabletScaffold;
      } else {
        categoryC.viewMode.value = 'desktopScaffold';

        return desktopScaffold;
      }
    });
  }
}
