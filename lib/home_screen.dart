import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:dating_app/user_profile.dart';
import 'package:dating_app/widget/appbar.dart';
import 'package:dating_app/widget/grid_detail.dart';
import 'package:dating_app/widget/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List userList = [
    ["James", "20", "lib/images/men3.jpg", "100%", "1.3", "BERLIN"],
    ["Eddie", "23", "lib/images/men.jpg", "85%", "3", "TEXAS"],
    ["Paul", "25", "lib/images/men4.jpg", "93%", "2.5", "PARIS"],
    ["John", "24", "lib/images/men5.jpg", "90%", "3.7", "LONDON"],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //appbar
            CustomAppBar(),
            //profile
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  UserProfile(
                      image: "lib/images/men3.jpg",
                      icon: Icons.favorite_rounded,
                      text: "Likes",
                      num: "32"),
                  UserProfile(
                      image: "lib/images/men1.jpg",
                      icon: Icons.mode_comment,
                      text: "Connect",
                      num: "52"),
                  UserProfile(
                      image: "lib/images/men.jpg",
                      icon: Icons.mode_comment,
                      text: "Connect",
                      num: "67"),
                  UserProfile(
                      image: "lib/images/men4.jpg",
                      icon: Icons.mode_comment,
                      text: "Connect",
                      num: "25"),
                  UserProfile(
                      image: "lib/images/men5.jpg",
                      icon: Icons.mode_comment,
                      text: "Connect",
                      num: "46"),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RichText(
                  text: TextSpan(
                      text: "Your Matches",
                      style: TextStyle(
                          fontSize: 27,
                          fontFamily: "Arial Rounded MT Bold",
                          fontWeight: FontWeight.w900,
                          color: Colors.deepPurple.shade900),
                      children: [
                    TextSpan(
                        text: "\t47",
                        style: TextStyle(color: Colors.purple, fontSize: 23))
                  ])),
            ),
            Expanded(
                child: GridView.builder(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    itemCount: userList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>UserDetail()));
                        },
                          child: GridDetail(
                              name: userList[index][0],
                              age: userList[index][1],
                              image: userList[index][2],
                              match: userList[index][3],
                              distance: userList[index][4],
                              city: userList[index][5]));
                    }))
          ],
        ),
      ),
    );
  }
}
