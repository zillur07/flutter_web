import 'package:flutter/material.dart';
import 'package:flutter_web/component/my_box.dart';
import 'package:flutter_web/component/my_list.dart';
import 'package:flutter_web/models/category.dart';
import 'package:flutter_web/responsive/constants.dart';

import '../component/right_site.dart';

class MobileScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: GridView.builder(
                itemCount: Category.allCategory.length,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                primary: false,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final item = Category.allCategory[index];
                  return MyBox(
                    item: item,
                  );
                },
              ),
            ),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              primary: false,
              itemBuilder: (BuildContext context, int index) {
                return MyList();
              },
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      RightSite(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
