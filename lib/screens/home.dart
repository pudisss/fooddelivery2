import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import 'package:fooddelivery2/data/data.dart';
import "../pages/viewres.dart";


class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Categories press
  bool press1 = true;
  bool press2 = false;
  bool press3 = false;
  bool press4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Row(
                  children: [
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset("assets/images/locationicon.png")),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text("Home",textAlign: TextAlign.left, style: TextStyle(fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black))
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text("242 ST Marks Eve, Finland ",textAlign: TextAlign.left, style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(110, 128, 176, 1)))
                          )
                        ]
                      )
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                height: 82,
                
                  child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                press1 = true;
                                press2 = false;
                                press3 = false;
                                press4 = false;
                              });
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: press1 ? Color.fromRGBO(109, 97, 242, 1) : Color.fromRGBO(248, 248, 250, 1),
                          
                              ),
                              child: Center(child: Image.asset(categoriesfilepath[0], color: press1 ? Colors.white : Color.fromRGBO(110, 128, 176, 1))),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                press1 = false;
                                press2 = true;
                                press3 = false;
                                press4 = false;
                              });
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: press2 ? Color.fromRGBO(109, 97, 242, 1) : Color.fromRGBO(248, 248, 250, 1),
                          
                              ),
                              child: Center(child: Image.asset(categoriesfilepath[1], color: press2 ? Colors.white : Color.fromRGBO(110, 128, 176, 1)))
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                press1 = false;
                                press2 = false;
                                press3 = true;
                                press4 = false;
                              });
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: press3 ? Color.fromRGBO(109, 97, 242, 1) : Color.fromRGBO(248, 248, 250, 1),
                          
                              ),
                              child: Center(
                                child: Image.asset(categoriesfilepath[2], color: press3 ? Colors.white: Color.fromRGBO(110, 128, 176, 1))
                              )
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                press1 = false;
                                press2 = false;
                                press3 = false;
                                press4 = true;
                              });
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: press4 ? Color.fromRGBO(109, 97, 242, 1) : Color.fromRGBO(248, 248, 250, 1),
                          
                              ),
                              child: Center(
                                child: Image.asset(categoriesfilepath[3], color: press4 ? Colors.white: Color.fromRGBO(110, 128, 176, 1))
                              )
                              
                            ),
                          ),
                          
                        ]
                      ),
                     
                    
                  

                
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      
                      child: Text("Popular Restuarant", style: TextStyle(fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black))
                    ),
                    Container(
                      child: Image.asset('assets/images/optionsicon.png')
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: List.generate(
                    popularfilepath.length,
                    (index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ViewRes(foodname[index], stars[index], types[index]))
                          );
                        },
                        child: Container(
                          
                          margin: EdgeInsets.only(top: 30, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Image.asset(popularfilepath[index])
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(foodname[index], style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black))
                                    ),
                                    Container(
                                      
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Image.asset('assets/images/staricon.png')
                                                ),
                                                Container(
                                                  child: Text(stars[index], style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black))
                                                )
                                              ]
                                            )
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text("${types[index]} ", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w400, color: Color.fromRGBO(110, 128, 176, 1)))
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text("${time[index]} min", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w400, color: Color.fromRGBO(110, 128, 176, 1) ))
                                          )
                                        ]
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Container(
                                child: Text("${promotions[index]} OFF", style: TextStyle(fontFamily: "Poppins",fontSize: 15, fontWeight: FontWeight.w500, color: Color.fromRGBO(109, 97, 242, 1)))
                      
                              )
                      
                            ]
                          )
                        ),
                      );
                    }
                  )
                )
              )
            ]
          )
        )
      )
    );
  }
}