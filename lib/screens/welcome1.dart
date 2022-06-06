import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "welcome2.dart";

class Welcome1 extends StatefulWidget {
  Welcome1({Key? key}) : super(key: key);

  @override
  State<Welcome1> createState() => _Welcome1State();
}

class _Welcome1State extends State<Welcome1> {
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
              margin: EdgeInsets.only(top: 150),
              child: Image.asset("assets/images/betogether.png")
            ),
            // Text Section
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Container(
                    child: Text("Be Together", style: TextStyle(fontFamily: "Poppins", fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 277,
                    height: 104,
                    child: Text("Healthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.",textAlign: TextAlign.center, style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black))
                  )

                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Image.asset('assets/images/1dot.png'),
            ),
            
            Container(
              margin: EdgeInsets.only(top: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Welcome2())
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
                    child: Text("Next", style: TextStyle(fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white))
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