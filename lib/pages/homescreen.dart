import 'dart:ffi';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int containerindex = 0;
  List<int> indexcolor = [0, 1, 4];
  List<String> salesimage = ["assets/banner 1.png", "assets/banner 2.png"];
  List<String> categoryimage = [
    "assets/fashion 1.png",
    "assets/fashion 2.png",
    "assets/fashion 3.png",
    "assets/fashion 4.png",
    "assets/Category.png",
  ];
  List<String> categoryname = [
    "Apparel",
    "School",
    "Sports",
    "Electronic",
    "All"
  ];
  List<Color> colorindex = [
    Color(0xffEDF7FF),
    Color(0xffECFCFF),
    Color(0xffFFEDDD),
    Color(0xffFFEEED),
    Color(0xffE9FFF8),
  ];
  List<String> addcart = [
    "assets/monitor.png",
    "assets/mug.png",
    "assets/airpods.png",
    "assets/console.png",
  ];
  List<String> addcartname = [
    "Monitor LG 22”inc 4K 120Fps...",
    "Aestechic Mug - white variant...",
    "Airposds pro",
    "Playstation 4 - SSD 128 GB...",
  ];
  List<String> addcartpay = [
    "\$199.99",
    "\$19.99",
    "\$499.99",
    "\$1999.99",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            DelayedDisplay(
              delay: Duration(milliseconds: 500),
              child: Container(
                // color: Colors.red,
                width: 350,
                height: 60,
                margin: EdgeInsets.only(left: 20, top: 51),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      //color: Colors.amber,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivery address",
                            style:
                                TextStyle(color: Color(0xffC8C8CB), fontSize: 10),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 200,
                              height: 30,
                              child: Row(
                                children: [
                                  Text(
                                    "Salatiga City, Central Java",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset("assets/Arrow.png")),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset("assets/Buy.png")),
                            ),
                            Positioned(
                                left: 25,
                                right: 5,
                                top: 8,
                                child: Image.asset("assets/Group 15.png"))
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/Notification.png"))
                      ],
                    )
                  ],
                ),
              ),
            ),
            DelayedDisplay(
              delay: Duration(milliseconds: 1000),
              child: Container(
                width: 350,
                height: 38,
                margin: EdgeInsets.only(top: 16, left: 20, right: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffF0F2F1)),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/Search.png",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Text(
                      "Search here ...",
                      style: TextStyle(color: Color(0xffC8C8CB), fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
            DelayedDisplay(
              delay: Duration(milliseconds:1500),
              child: SizedBox(
                width: double.infinity,
                height: 163,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: salesimage.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 17, left: 19),
                      child: Row(
                        children: [Image.asset(salesimage[index])],
                      ),
                    );
                  },
                ),
              ),
            ),
            DelayedDisplay(
              delay: Duration(milliseconds: 2000),
              child: Container(
                alignment: Alignment.centerLeft,
                width: 350,
                margin: EdgeInsets.only(top: 6, left: 20),
                child: Text(
                  "Category",
                  style: TextStyle(
                      color: Color(0xff393F42),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            DelayedDisplay(
              delay: Duration(milliseconds: 2500),
              child: Container(
                margin: EdgeInsets.only(top: 13, left: 20, right: 21),
                child: SizedBox(
                  width: 350,
                  height: 61,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: categoryimage.length,
                    itemExtent: 70,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 61,
                            height: 61,
                            child: Column(
                              children: [
                                Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: colorindex[index],
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Image.asset(categoryimage[index])),
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 6),
                                  child: Text(
                                    categoryname[index],
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff939393)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
            DelayedDisplay(
              delay: Duration(milliseconds:3000 ),
              child: Container(
                width: 350,
                height: 30,
                margin: EdgeInsets.only(
                  top: 17,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Recent product",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff393F42)),
                        )),
                    Container(
                      alignment: Alignment.center,
                      width: 84,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffF0F2F1)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Filters",
                            style:
                                TextStyle(fontSize: 12, color: Color(0xff393F42)),
                          ),
                          Container(
                            padding: EdgeInsets.all(0),
                            child: IconButton(
                                onPressed: () {},
                                icon: Image.asset("assets/Filter 2.png")),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            DelayedDisplay(
              delay: Duration(milliseconds: 3500),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  padding: EdgeInsets.all(0),
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade100,
                                  
                                  spreadRadius: 2,
                                  blurRadius: 1, offset: Offset(1,2))
                            ]),
                        width: 200,
                        height: 600,
                        child: Column(
                          children: [
                            Image.asset(addcart[index]),
                            Container(
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(
                                  top: 13,
                                ),
                                child: Text(
                                  addcartname[index],
                                  style: TextStyle(fontSize: 11),
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 4, top: 4),
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  addcartpay[index],
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                )),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 13),
                              width: 150,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xff67C4A7),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "Add to card",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.6),
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
