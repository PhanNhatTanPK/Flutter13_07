import 'package:flutter/material.dart';

import 'package:flutter1307/models/item.dart';
import 'package:flutter1307/widgets/image_item.dart';
import 'package:flutter1307/widgets/my_bottom_bar.dart';
import 'package:flutter1307/widgets/my_elevated_button.dart';
import 'package:flutter1307/widgets/my_outline_button.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Info extends StatelessWidget {
  Info({super.key});

  List<Item> listImage = [
    Item(imageURL: "images/25.png"),
    Item(imageURL: "images/26.png"),
    Item(imageURL: "images/27.png"),
    Item(imageURL: "images/28.png"),
    Item(imageURL: "images/29.png"),
    Item(imageURL: "images/30.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top:32),
                    width: 128,
                    height: 128,
                    decoration: ShapeDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/Ellipse4.png"),
                            fit: BoxFit.fill),
                        shape: OvalBorder()),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top:32, bottom: 16),
                    child: Text("Jane",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.54,
                        )),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top:16),
                    child: Text("SAN FRANCISCO, CA",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.52,
                        )),
                  )
                ],
              ),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16, top:32),
                    child: MyElevatedButton(
                        nameButton: "FOLLOW JANE",
                        heightButton: 52.0,
                        widthButton: 380.0, func: () {
                    }),
                  ),
                ],
              ),

              Row(
                children: [
                  Container(
                    child:  MyOutlineButton(
                      nameButton: 'MASSAGE',
                      widthButton: 380.0,
                      heightButton: 52.0,
                      func: () {},
                    )
                  )
                ],
              ),

              //List image
              // Row(
              //   children: [
              //     Container(
              //       height: 400,
              //         width: 387,
              //         margin: EdgeInsets.only(left: 11, right: 11),
              //         child: StaggeredGridView.countBuilder(
              //           crossAxisCount: 2,
              //           itemBuilder: (context, index) =>
              //               // ImageItem(item: listImage[index]),
              //           staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              //           mainAxisSpacing: 0,
              //           crossAxisSpacing: 0,
              //           itemCount: listImage.length,
              //         )),
              //   ],
              // ),

              // //Button see more
              Row(
                children: [
                  MyOutlineButton(
                    nameButton: 'SEE MORE',
                    widthButton: 380,
                    heightButton: 52,
                    func: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
