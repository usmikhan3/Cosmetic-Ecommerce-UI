import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ui_challenge1/constants.dart';
import 'package:ui_challenge1/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset("assets/2.PNG",fit: BoxFit.cover,),),
              ),
            SizedBox(height: 10,),
              Text("Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: white),),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        categoryContainer(image:"assets/body_care.png" ),
                        Text("Body Care",style: TextStyle(color: white54),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        categoryContainer(image:"assets/facial_care.png" ),
                        Text("Facial Care",style: TextStyle(color: white54),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        categoryContainer(image:"assets/hair_care.png" ),
                        Text("Hair Care",style: TextStyle(color: white54),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        categoryContainer(image:"assets/nail_care.png" ),
                        Text("Nail Care",style: TextStyle(color: white54),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        categoryContainer(image:"assets/make_up.png" ),
                        Text("Make Up",style: TextStyle(color: white54),)
                      ],
                    ),


                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text("Offers",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: white),),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     GestureDetector(
                         onTap: (){
                           Navigator.push(context, PageTransition(child: DetailScreen(), type: PageTransitionType.rightToLeft));
                         },
                         child: offersContainer(size: size,image: "assets/product1.png",name: "Pink Lipstick",newPrice: 12.50,oldPrice: 15.50)),
                    SizedBox(width: 15,),
                    offersContainer(size: size,image: "assets/product2.png",name: "Nail polish",newPrice: 8.50,oldPrice: 12.50),
                    SizedBox(width: 15,),
                    offersContainer(size: size,image: "assets/product3.png",name: "Lip Gloss",newPrice: 18.50,oldPrice: 25.50),


                    SizedBox(width: 15,),


                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Container offersContainer({Size size,String image,double newPrice, double oldPrice, String name}) {
    return Container(
                   padding: EdgeInsets.all(8.0),
                   width: size.width * 0.35,
                   decoration: BoxDecoration(
                       color: Colors.grey[800],
                       borderRadius: BorderRadius.circular(10.0),
                   ),
                   child: Column(

                          children: [
                            Image.asset(image,height: 100,),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("\$$newPrice", style: TextStyle(color: Colors.pink,fontSize: 14,fontWeight: FontWeight.bold),),
                                SizedBox(width: 15,),
                                Text("\$$oldPrice", style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold,decoration:  TextDecoration.lineThrough),),

                              ],
                            ),
                            SizedBox(height:10,),
                            Align(alignment: Alignment.centerLeft,child: Text(name,style: TextStyle(color: white,fontSize: 18),)),

                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    //side: BorderSide(color: Colors.white)
                                  ))
                              ),
                                onPressed: (){},
                                child: Text("Add to Cart",style: TextStyle(color: Colors.grey),))

                          ],
                   ),
                 );
  }

  Container categoryContainer({String image}) {
    return Container(
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    height: 50,
                    width: 50,
                    child: Image.asset(image),
                  );
  }
}

