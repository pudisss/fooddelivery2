import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "../backend/authentication.dart";
import "../screens/home.dart";
import "../backend/database.dart";
import "../screens/homescreen.dart";

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Error variables
  int errorindex = 0;
  bool error = false;
  List<String> errors = [
    "Please enter the information above",
    "The password must be 8 in length"
  ];

  // Text Field Controller
  final email = TextEditingController();
  final password = TextEditingController();
  // Check Sigin function 
  Future<void> checkSignIn() async {
    // To check the data before add the data to the database
    if (email.text.isNotEmpty && password.text.isNotEmpty) {
      if (password.text.length >= 8) {
        await Database.signIn(email.text, password.text);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen())
        );

      } else if (password.text.length < 8) {
        setState(() {
          error = true;
          errorindex = 1;
        });
      }
    } else if (email.text.isEmpty && password.text.isEmpty) {
      setState(() {
        error = true;
        errorindex = 0;
      });
    }
  }
  // Google Sigin function
  Future<void> googleSignin() async {
    await Authentification.singInWithGoogle();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home())
    );

   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        
        
        child: Column(
          children: [
            // Text Welcome
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Container(
                    child: Text("Login", style: TextStyle(fontFamily: "Poppins", fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text("Access Account", style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey))
                  )
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => googleSignin(),
                    child: Container(
                    width: 148,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(248, 248, 250, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/googleicon.png')
                    )
                  )),
                  GestureDetector(child: Container(
                    width: 148,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(248, 248, 250, 1),
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child:Center(
                      child: Image.asset('assets/images/facebookicon.png')
                    )
                  )),
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text("or Log in with Email",style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(110, 128, 176, 1)))
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 40, left: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,

                    child: Text("Email", style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(24, 23, 43, 1)))
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top :20),
                    child: SizedBox(
                      width: 327,
                      height: 56,

                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: Color.fromRGBO(248, 248, 250, 1),
                          filled: true,
                          hintText: "Email Address",
                          hintStyle: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black)

                        )
                      )
                    )
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 20),
                    child: Text("Password", style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black))
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 327,
                      height: 56,
                      child: TextField(
                        controller: password,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,

                          ),
                          fillColor: Color.fromRGBO(248, 248, 250, 1),
                          filled: true,
                          hintText: "Password",
                          hintStyle: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
                          suffixIcon: Icon(Icons.visibility, color: Colors.black)
                        )
                      )
                    )
                  )
                ]
              )
            ),
            Visibility(
              visible: error,
              child: Text(errors[errorindex], style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.red))
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 20),

              child: GestureDetector(
                onTap: () => checkSignIn(),
                child: Container(
                  width: 327,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(109, 97, 242, 1),
                  ),
                  child: Center(
                    child: Text("Sign in", style: TextStyle(fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white,))
                  )
                )
              )
            
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: GestureDetector(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400,color: Colors.grey,)
                      ),
                      TextSpan(
                        text: "Register",
                        style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(109, 97, 242, 1))
                      )
                    ]
                  )
                )
              )
            )
          ]
        )
      )
    ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}