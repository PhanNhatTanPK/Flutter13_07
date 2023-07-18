import 'package:flutter/material.dart';

import 'package:flutter1307/widgets/my_bottom_bar.dart';
import 'package:flutter1307/widgets/my_outline_button.dart';

import '../widgets/my_text_field.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  List<String> _allImage = [
    "images/1.png",
    "images/2.png",
    "images/3.png",
    "images/4.png",
    "images/5.png",
    "images/6.png",
    "images/7.png",
    "images/8.png",
    "images/9.png",
    "images/10.png",
    "images/11.png",
    "images/12.png",
    "images/13.png",
    "images/14.png",
    "images/15.png",
    "images/16.png",
    "images/17.png",
    "images/18.png",
    "images/19.png",
    "images/20.png",
    "images/21.png",
    "images/22.png",
    "images/23.png",
    "images/24.png",
  ];

  List<String> _foundImage =[];

  @override
  void initState() {
    // TODO: implement initState
    _foundImage = [];
      super.initState();
  }

  _runFilter(String enteredValue) {
    List<String> results = [];
    if(enteredValue == "dogs") {
      results = _allImage;
    }
    else  {
      results = [];
    }
    setState(() {
      _foundImage = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {FocusScope.of(context).requestFocus(FocusNode())},
      child: Scaffold(
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 32, left: 16),
                    child: Text(
                      "Search",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.54,
                      ),
                    ),
                  )
                ],
              ),

              //Search Bar
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 32),
                      width: 410,
                      height: 100,
                      child: MyTextField(
                        fieldName: "Search all photos",
                        validator: (value) => _runFilter(value.toString()),
                      )),
                ],
              ),

              Row (
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    margin: EdgeInsets.only(left: 16),
                    child:
                    Text("ALL RESULTS")
                  )
                ],
              ),

              // List Image
              Row(
                children: [
                  Container(
                    height: 380,
                    width: 375,
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child:
                      GridView.builder(
                      scrollDirection: Axis.vertical,
                       shrinkWrap: true,
                       itemCount: _foundImage.length,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 10, mainAxisSpacing: 10),
                       itemBuilder: (context, index) => Image(image: AssetImage(_foundImage[index]),fit: BoxFit.fitWidth),
                      )
                  )
                ],
              ),

              //Button See more
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
            ]),
          ),
        ),

        //Bottom Navigation
        bottomNavigationBar:  MyBottomBar(),
      ),
    );
  }
}

