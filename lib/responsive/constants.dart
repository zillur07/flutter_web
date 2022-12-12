import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/k_text.dart';
import 'package:get/get.dart';

import '../controller/category_controller.dart';
import '../helpers/hex_color.dart';

// Apps Background Color
var myDefaultBackground = Colors.grey[300];

// Appbar for Apps
var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
  title: KText(
    text: 'New Change for web with flutter',
    color: Colors.white,
    fontSize: 18,
  ),
);
final categoryC = Get.put(CategoryController());
// Drawer for Apps
var myDrawer = Obx(
  () => Drawer(
    shape: RoundedRectangleBorder(
      borderRadius: categoryC.viewMode.value == 'desktopScaffold'
          ? BorderRadius.all(Radius.circular(15))
          : BorderRadius.all(Radius.circular(0)),
    ),
    // backgroundColor: Colors.blue,
    child: Container(
      decoration: BoxDecoration(
        // color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          DrawerHeader(
              child: Row(
            children: [
              // Row(
              //   children: [
              //     Icon(
              //       Icons.settings,
              //       color: Colors.blueGrey,
              //       size: 35,
              //     ),
              //     Spacer(),
              //     Icon(
              //       Icons.layers_outlined,
              //       color: Colors.blueGrey,
              //       size: 35,
              //     ),
              //   ],
              // ),
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(85),
                      color: hexToColor('#CAFDF0'),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i0.wp.com/evanstonroundtable.com/wp-content/uploads/2022/05/Lushina-scaled-e1652827479814.jpg?fit=1200%2C900&ssl=1'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    right: 10,
                    child: CircleAvatar(
                      radius: 12,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Icon(
                          Icons.edit,
                          size: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KText(
                    text: 'Hi Mariya',
                    fontSize: 24,
                    bold: true,
                  ),
                  KText(
                    text: 'mariya.info@gamil.com',
                    fontSize: 15,
                    bold: true,
                    color: Colors.blueGrey,
                  ),
                ],
              )
            ],
          )),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.blueAccent,
            ),
            title: Text('D A S H B O A R D'),
          ),
          ListTile(
            leading: Icon(
              Icons.chat,
              color: Colors.blueAccent,
            ),
            title: Text(
              'M A S S A G E ',
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.blueAccent,
            ),
            title: Text(
              'S E T T I N G S',
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.blueAccent,
            ),
            title: Text(
              'S T O R E',
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.blueAccent,
            ),
            title: Text(
              'L O G O U T',
            ),
          ),
        ],
      ),
    ),
  ),
);
