import 'package:flutter/material.dart';

class InterestCategory extends StatelessWidget {
  final String text;
  final String icon;
  const InterestCategory({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade400,width: 1.8)
      ),
      padding: EdgeInsets.all(08),
      child: Row(
        children: [
          Image.asset(icon,height: 22,),
          SizedBox(width: 5,),
          Text(text,style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
