import 'package:flutter/material.dart';

class GridDetail extends StatelessWidget {
  final String name;
  final String age;
  final String image;
  final String match;
  final String distance;
  final String city;
  const GridDetail(
      {Key? key,
      required this.name,
      required this.age,
      required this.image,
      required this.match,
      required this.distance,
      required this.city})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 10),
      child: Stack(fit: StackFit.expand, children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.purpleAccent, width: 4),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.9),
                  Colors.white.withOpacity(0.35),
                ],
                stops: [
                  0.0,
                  0.4,
                  0.6
                ]).createShader(rect);
          },
          blendMode: BlendMode.dstOut,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.purple.shade100, Colors.purple.shade800]),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: EdgeInsets.all(6),
            height: 30,
            decoration: BoxDecoration(
              color: Colors.purpleAccent.shade100,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Text(
              match + "\tmatch",
              style: TextStyle(
                  color: Colors.grey.shade100,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade400.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    distance + "\tkm away",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.all(5),
              ),
              Text(
                name + ",\t" + age,
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                city,
                style: TextStyle(fontSize: 18, color: Colors.grey.shade400),
              )
            ],
          ),
        )
      ]),
    );
  }
}
