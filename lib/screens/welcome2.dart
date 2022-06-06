import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "welcome3.dart";

class Welcome2 extends StatefulWidget {
  Welcome2({Key? key}) : super(key: key);

  @override
  State<Welcome2> createState() => _Welcome1State();
}

class _Welcome1State extends State<Welcome2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(

              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 50, right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text("Skip", style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(110, 128, 176, 1)))
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 150),
              child: Image.asset('assets/images/choose.png')
            ),
            // Text Section
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Text("Choose a tasty Dish", style: TextStyle(fontFamily: "Poppins", fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 277,
                    height: 104,
                    child: Text("Order anything you want from your Favorite restaurant.",textAlign: TextAlign.center, style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(110, 128, 176, 1))
                    )),
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Image.asset('assets/images/2dots.png')
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Welcome3())
                  );
                },
                child: Container(
                  width: 327,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(109, 97, 242, 1),
                  ),
                  child: Center(
                    child: Text("Next", style: TextStyle(fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white,))
                  )
                )
              )
            )
          ]
        )
      )
    );
  }
}