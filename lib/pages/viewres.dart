import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "../data/data.dart";
import "../pages/menu.dart";


class ViewRes extends StatefulWidget {
  final name;
  final star;
  final type;
  ViewRes(this.name, this.star, this.type);

  @override
  State<ViewRes> createState() => _ViewResState(this.name, this.star, this.type);
}

class _ViewResState extends State<ViewRes> {
  final name;
  final star;
  final type;

  // Press boolean type variable for category
  bool press1 = true;
  bool press2 = false;
  bool press3 = false;
  bool press4 = false;
  _ViewResState(this.name, this.star, this.type);
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromRGBO(248, 248, 250, 1),
                      ),
                      child: Center(
                        child: Icon(Icons.arrow_back_ios, color: Colors.black)
                      )
                    )),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color.fromRGBO(248, 248, 250, 1),
                            ),
                            child: Center(
                              child: Image.asset('assets/images/hearticon.png')
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color.fromRGBO(248, 248, 250, 1),
                            ),
                            child: Center(
                              child: Image.asset('assets/images/saveicon.png')
                            )
                          )
                        ]
                      )
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Image.asset('assets/images/viewbackground.png')
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: 

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    
                     [
                      Container(
                        
                        child: Column(
                          children: [
                            Container(
                              child: Text(name, style: TextStyle(fontFamily: "Poppins", fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black))
                            ),
                            Container(
                              
                              child: Row(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Image.asset('assets/images/staricon.png')
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text(star, style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black))
                                        )
                                      ]
                                    )
                                    
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text("Pizza", style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(110, 128, 176, 1)))
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(type, style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(110, 128, 176, 1)))
                                  )
                                ]
                              )
                            )
                          ]
                        )
                      ),
                      Container(
                        child: Text("More info", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(109, 97, 242, 1)))
                      )
                    ]
                  ),
            ),
              
              Container(
                
                margin: EdgeInsets.only(right: 20, left: 20, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Menu", style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black))
                    ),
                    
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
                          },
                          child: Container(
                            child: Image.asset('assets/images/optionsicon.png')
                          ),
                        )
                      
                    
                  ]
                )
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
  
                child: Row(children: [
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
                        margin: EdgeInsets.only(left: 20),
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: press1 ? Color.fromRGBO(109, 97, 242, 1) : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(child: Text("Best Selling", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w500, color:press1 ? Colors.white : Colors.black)))
                    
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
                        margin: EdgeInsets.only(left: 20),
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: press2 ? Color.fromRGBO(109, 97, 242, 1) : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(child: Text("Veg Pizza", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w500, color:press2 ? Colors.white : Colors.black)))
                    
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
                        margin: EdgeInsets.only(left: 20),
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: press3 ? Color.fromRGBO(109, 97, 242, 1) : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(child: Text("Pizza Mania", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w500, color:press3 ? Colors.white : Colors.black)))
                    
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
                        margin: EdgeInsets.only(left: 20),
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: press4 ? Color.fromRGBO(109, 97, 242, 1) : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(child: Text("Sides", style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w500, color:press4 ? Colors.white : Colors.black)))
                    
                      ),
                    ),

                    
                  ]
                )
              )
            
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: List.generate(Menufilepath.length, (index) {
                return Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Image.asset(Menufilepath[index])
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              alignment: Alignment.centerLeft,
                              child: Text(menuname[index] ,style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black))
                            ),
                            Container(
                            
                              alignment: Alignment.centerLeft,
                              child: Text(place[index], style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey,))
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(price[index], style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black))
                            )
                          ]
                        )
                      ),
                      Container(
                        child: Column(
                          children: [
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
                                    child: Icon(Icons.add, color: Color.fromRGBO(109, 97, 242, 1))
                                  )
                                ]
                              )
                            ),
                            Container()
                          ]
                        )
                      )
                    ]
                  )
                );
              })
            )
          )])
        ))
      
    );
  }
}