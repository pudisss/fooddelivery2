import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "../pages/login.dart";

class Welcome3 extends StatefulWidget {
  Welcome3({Key? key}) : super(key: key);

  @override
  State<Welcome3> createState() => _Welcome1State();
}

class _Welcome1State extends State<Welcome3> {
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
              margin: EdgeInsets.only(top: 50, right: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text("Skip", style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(110, 128, 176, 1)))
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 150),
              child: Image.asset('assets/images/easypayment.png')
            ),
            // Text Section
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Text("Easy Payment", style: TextStyle(fontFamily: "Poppins", fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 277,
                    height: 104,
                    child: Text("Payment made easy through debit card, credit card  & more ways to pay for your food",textAlign: TextAlign.center, style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(110, 128, 176, 1)))
                  )
                ]
              )
            ),
            Spacer(),
            
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login())
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
                    child: Text("Enter", style: TextStyle(fontFamily: 'Poppins', fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white,))
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