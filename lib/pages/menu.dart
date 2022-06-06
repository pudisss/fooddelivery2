import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import 'package:fooddelivery2/data/data.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  // Categories variables
  bool press1 = true;
  bool press2 = false;
  bool press3 = false;
  bool press4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(248, 248, 250, 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(child: Icon(Icons.arrow_back_ios, color: Colors.black))
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 100),
                    child: Text("Menu", style: TextStyle(fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black))
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(248, 248, 250, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/optionsicon.png')
                    )
                  )
                ]

              )
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 20),
              height: 40,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
                        margin: EdgeInsets.only(left: 15),
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: press1 ? Color.fromRGBO(109, 97, 242, 1) : Colors.white,
                        ),
                        child: Center(
                          child: Text("Best Seller", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w500, color: press1 ? Colors.white : Colors.black))
                        )
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
                        margin: EdgeInsets.only(left: 15),
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: press2 ? Color.fromRGBO(109, 97, 242, 1) : Colors.white,
                        ),
                        child: Center(
                          child: Text("Veg Pizza", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w500, color: press2 ? Colors.white : Colors.black))
                        )
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
                        margin: EdgeInsets.only(left: 15),
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: press3 ? Color.fromRGBO(109, 97, 242, 1) : Colors.white,
                        ),
                        child: Center(
                          child: Text("Pizza Mania", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w500, color: press3 ? Colors.white: Colors.black))
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
                        margin: EdgeInsets.only(left: 15),
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: press4 ? Color.fromRGBO(109, 97, 242, 1) : Colors.white,
                        ),
                        child: Center(
                          child: Text("Sides", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w500, color: press4 ? Colors.white : Colors.black))
                        )
                      ),
                    ),
                    
                  ]
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 20),
              child: Column(
                children: List.generate(menufilepaths.length, (index) {
                  return Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Image.asset(menufilepaths[index])
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(menunames[index], style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black))
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text("In Veg Pizza", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w400, color: Color.fromRGBO(110, 128, 176, 1)))
                              ),
                              Container(
                                child: Text(menuprice[index], style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black))
                              )
                            ]
                          )
                        ),
                        Container(
                          width: 88,
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color.fromRGBO(248, 248, 250, 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text("Add", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black))
                              ),
                              Container(
                                child: Image.asset('assets/images/plusicon.png')
                              )
                            ]
                          )
                        )
                      ]
                    )
                  );
                })
              )
            )
            
          ]
        ))
      ),
    );
  }
}