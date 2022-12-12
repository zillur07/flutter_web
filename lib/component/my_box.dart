import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web/helpers/k_text.dart';

import '../models/category.dart';

class MyBox extends StatelessWidget {
  final Category? item;

  const MyBox({super.key, this.item});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              item!.imgCategory!,
              color: Colors.blue,
              height: 60,
            ),
            SizedBox(
              height: 8,
            ),
            KText(
              text: item!.name,
              fontSize: 16,
              bold: true,
              color: Colors.blueGrey,
            )
          ],
        ),
      ),
    );
  }
}
