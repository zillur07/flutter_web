import 'package:flutter/material.dart';
import 'package:flutter_web/component/my_box.dart';
import 'package:flutter_web/component/my_list.dart';
import 'package:flutter_web/component/right_site.dart';
import 'package:flutter_web/models/category.dart';
import 'package:flutter_web/responsive/constants.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: Row(
        children: [
          Container(margin: EdgeInsets.all(15), child: myDrawer),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 4,
                    child: GridView.builder(
                      itemCount: Category.allCategory.length,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      primary: false,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
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
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: SingleChildScrollView(
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
    );
  }
}
