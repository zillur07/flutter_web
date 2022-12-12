import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/hex_color.dart';
import 'package:flutter_web/helpers/k_text.dart';
import 'package:get/get.dart';

class RightSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.black,
                  size: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Stack(
                    children: [
                      Icon(
                        Icons.notifications_rounded,
                        color: Colors.black,
                        size: 25,
                      ),
                      Positioned(
                        top: 5,
                        left: 16,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 3,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.person_pin,
                  color: Colors.black,
                  size: 26,
                ),
              ],
            ),
          ),
          // Image.asset('assets/img/truck-2.png'),
          Image.network(
              'https://www.creditcards.com/ext/cdn.prodstatic.com/shared/images/cards/500x315/5f4f4070-c471-11eb-99d8-ddd3faec9ad4.jpeg'),
          SizedBox(
            height: 10,
          ),

          Container(
            padding: EdgeInsets.all(10),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.black12,
                )
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 3,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: KText(
                    text: 'General Team ',
                    fontSize: 16,
                    color: Colors.black,
                    bold: true,
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.black,
                    size: 21,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: Get.width,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 10,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.black12,
                        )
                      ],
                    ),
                    height: 40,
                    width: 120,
                    child: Center(
                        child: KText(
                      text: 'History',
                      bold: true,
                      fontSize: 14,
                    )),
                  ),
                );
              },
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.black12,
                )
              ],
            ),
            child: Image.asset('assets/img/truck-2.png'),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.black12,
                )
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      KText(
                        text: 'Popular Item',
                        fontSize: 14,
                        bold: true,
                      ),
                      Spacer(),
                      KText(
                        text: 'All feed',
                        fontSize: 13,
                        bold: true,
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(
                            text: 'Best Offer',
                            bold: true,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          KText(
                            text: 'Check our new best offer',
                            color: Colors.blueGrey,
                            fontSize: 10,
                          ),
                        ],
                      ),
                      // Spacer(),
                      // Icon(
                      //   Icons.arrow_forward_ios,
                      //   size: 12,
                      //   color: Colors.blueGrey,
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.inventory,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(
                            text: 'Best Offer',
                            bold: true,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          KText(
                            text: 'Check our new best offer',
                            color: Colors.blueGrey,
                            fontSize: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.chat_outlined,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(
                            text: 'Support Request',
                            bold: true,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          KText(
                            text: 'Check our new best offer',
                            color: Colors.blueGrey,
                            fontSize: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
