import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter1307/model/item.dart';
import 'package:flutter1307/widgets/card.dart';
import 'package:flutter1307/widgets/image_item.dart';
import 'package:flutter1307/widgets/my_bottom_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../model/card_item.dart';
import '../widgets/my_outline_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CartItem> items = [
    CartItem(
        image: "images/Rectangle 2.8.png",
        avatar: "images/Ellipse.png",
        name: "Ridhwan Nordin",
        link: "@ridzjcob"),
    CartItem(
        image: "images/Rectangle 2.9.png",
        avatar: "images/Ellipse1.png",
        name: "Clem Onojeghuo",
        link: "@clemono2"),
    CartItem(
        image: "images/Rectangle 2.10.png",
        avatar: "images/Ellipse2.png",
        name: "Jon Tyson",
        link: "@jontyson"),
    CartItem(
        image: "images/Rectangle 2.11.png",
        avatar: "images/Ellipse3.png",
        name: "Simon Zhu",
        link: "@smnzhu"),
  ];
  
  List<Item> listImage = [
    Item(imageURL: "images/Rectangle 2.png"),
    Item(imageURL: "images/Rectangle 2.1.png"),
    Item(imageURL: "images/Rectangle 2.2.png"),
    Item(imageURL: "images/Rectangle 2.3.png"),
    Item(imageURL: "images/Rectangle 2.4.png"),
    Item(imageURL: "images/Rectangle 2.5.png"),
    Item(imageURL: "images/Rectangle 2.6.png"),
    Item(imageURL: "images/Rectangle 2.7.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 32, bottom: 32, left: 16),
                child: Row(
                  children: [
                    Text("Discover",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.54,
                        ))
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 16, bottom: 8),
                child: Row(
                  children: [
                    Text(
                      "WHAT NEW TODAY",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.52,
                      ),
                    )
                  ],
                ),
              ),

              // List Card Image
              Container(
                height: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) =>
                      CardImage(item: items[index]),
                ),
              ),

              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 16, top: 48, bottom: 24),
                      child: Text(
                        "BROWSE ALL",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.52,
                        ),
                      )),
                ],
              ),

              // List picture
              Container(
                  height: 400,
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemBuilder: (context, index)=> ImageItem(item: listImage[index]),
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    itemCount: 8,
                  )),

              //Button See more
              Row(
                children: [
                  Container(
                    height: 52,
                    margin: EdgeInsets.only(left: 16, top: 32),
                    child: MyOutlineButton(
                      nameButton: 'SEE MORE',
                      widthButton: 380,
                      heightButton: 52,
                      func: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      //Bottom Navigation
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Color(0x4C000000),
            blurRadius: 0,
            offset: Offset(0, -0.50),
            spreadRadius: 0,
          )
        ]),
        child: BottomAppBar(
          height: 83,
          shape: CircularNotchedRectangle(),
          child: MyBottomBar(),
          elevation: 0,
        ),
      ),
    );
  }
}
