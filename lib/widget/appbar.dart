import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                border:
                Border.all(color: Colors.grey.shade400, width: 2,style: BorderStyle.solid),
                shape: BoxShape.circle),
            padding: EdgeInsets.all(10),
            child: Icon(Icons.arrow_back_ios),
          ),
          Text(
            "Matches",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900,fontFamily: "Times New Roman"),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 2,
                  style: BorderStyle.solid
                ),
                shape: BoxShape.circle),
            padding: EdgeInsets.all(10),
            child: Icon(Icons.menu),
          )
        ],
      ),
    );
  }
}
