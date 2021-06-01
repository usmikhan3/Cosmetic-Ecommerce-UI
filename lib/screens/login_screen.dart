import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ui_challenge1/constants.dart';
import 'package:ui_challenge1/screens/home_page.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
        height: size.height,
        color: black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/1.png",
                fit: BoxFit.cover,
                height: size.height * 0.3,
                width: size.width,
              ),
              SizedBox(
                height: 20,
              ),
              FittedBox(
                fit: BoxFit.contain,
                child:RichText(
                  text: TextSpan(
                    text: "Beautify: ",
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      fontFamily: "Pacifico",
                    ),
                    children: [
                      TextSpan(
                        text: "The Brand",
                        style: TextStyle(
                          color: white54,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          fontFamily: "Pacifico",
                        ),
                      )
                    ]
                  ),

                )
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    TextFormField(
                      style: TextStyle(
                        fontSize: 14,
                        color: white54,
                      ),
                      decoration: InputDecoration(
                          hintText: "example@example.com",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: white54,
                          ),
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: white,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: pink)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: pink)),
                          suffixIcon: Icon(
                            Icons.email_outlined,
                            color: white,
                          )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontSize: 14,
                        color: white54,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: white54,
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: white,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: pink)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: pink)),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: white,
                          )),
                    ),

                    SizedBox(height: 10,),

                    Align(alignment: Alignment.centerRight,child: Text("Forgot Password?",style: TextStyle(color: white54,fontSize: 16),)),

                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: size.width,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:  MaterialStateProperty.all(pink),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              //side: BorderSide(color: Colors.white)
                            ))
                        ),
                          onPressed: (){
                          Navigator.pushReplacement(context, PageTransition(child: HomeScreen(), type: PageTransitionType.rightToLeft));
                          },
                          child: Text("LOGIN",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),)
                      ),
                    ),

                    SizedBox(
                      height: 25,
                    ),

                    Text("Or login with",style: TextStyle(color: white54,fontSize: 14),),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/facebook.png",height: 20,),
                        SizedBox(width: 10,),
                        Image.asset("assets/google.png",height: 20,)
                      ],
                    ),



                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),

              Text("New User? Sign Up Now",style: TextStyle(color: white54,fontSize: 14),),
            ],
          ),
        ),
      ),
    );
  }
}
