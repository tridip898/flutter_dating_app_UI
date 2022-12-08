import 'package:dating_app/widget/interest_cate.dart';
import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("lib/images/men.jpg"),fit: BoxFit.cover)
              ),
            ),
            ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0.4),
                      Colors.white.withOpacity(0.0),
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
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(89, 12, 58, 0.7),
                          Color.fromRGBO(89, 12, 58, 1.0),

                        ])),
              ),
            ),
            Positioned(
              top: 25,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.4),
                      shape: BoxShape.circle
                    ),
                    child: IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.orange,),
                        Text("\t4.6",style: TextStyle(color: Colors.white,fontSize: 18),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*0.3,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple.shade800,
                      border: Border.all(color: Colors.purpleAccent,width: 1.6),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text("85% Match",style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                  SizedBox(height: 15,),
                  Text("Alfredo Calzoni, 23",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.w900),),
                  SizedBox(height: 05,),
                  Text("TEXAS, USA",style: TextStyle(fontSize: 22,color: Colors.grey.shade400),),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                        ),
                        padding: EdgeInsets.all(15),
                        child: Icon(Icons.close,size: 35,),
                      ),
                      SizedBox(width: 50,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.purpleAccent.shade100,
                            shape: BoxShape.circle
                        ),
                        padding: EdgeInsets.all(15),
                        child: Icon(Icons.favorite_rounded,size: 35,color: Colors.white,),
                      )
                    ],
                  )
                ],
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height*0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About",style: TextStyle(fontSize: 21,color: Colors.grey.shade400),),
                    SizedBox(height: 10,),
                    Text("A good listener. I love having a good talk to know each other's side.",style: TextStyle(fontSize: 19),),
                    SizedBox(height: 15,),
                    Text("Interest",style: TextStyle(fontSize: 21,color: Colors.grey.shade400),),
                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InterestCategory(text: "Sports", icon: "lib/icons/sport.png"),
                        InterestCategory(text: "Travel", icon: "lib/icons/airplane.png"),
                        InterestCategory(text: "Nature", icon: "lib/icons/plant.png"),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
