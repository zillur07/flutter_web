import 'package:flutter/material.dart';
import 'package:flutter_web/component/my_box.dart';
import 'package:flutter_web/component/my_list.dart';
import 'package:flutter_web/models/category.dart';
import 'package:flutter_web/responsive/constants.dart';

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
              itemCount: 5,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              primary: false,
              itemBuilder: (BuildContext context, int index) {
                return MyList();
              },
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.pink,
                child: Column(
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
