import 'package:flutter/material.dart';
import 'package:blur/blur.dart';

class UserProfile extends StatelessWidget {
  final String image;
  final icon;
  final String text;
  final String num;
  const UserProfile({Key? key, required this.image, required this.icon, required this.text, required this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.purple.shade200,width: 3),
                shape: BoxShape.circle
            ),
            padding: EdgeInsets.all(4),
            child: Blur(
              blur: 3,
              borderRadius: BorderRadius.circular(50),
              overlay: Icon(icon,color: Colors.white,size: 35,),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey,width: 1),
                    image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
                ),
              ),
            ),
          ),
          SizedBox(height: 5,),
          RichText(text: TextSpan(text: text,style: TextStyle(fontSize: 20,color: Colors.grey.shade700),children: [
            TextSpan(text: "\t"+num,style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold))
          ]))
        ],
      ),
    );
  }
}
