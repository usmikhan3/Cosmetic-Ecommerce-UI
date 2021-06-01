import 'package:flutter/material.dart';

import '../constants.dart';


class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0.0,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Center(
                child: Container(
                  width: size.width ,
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10.0)
                  ),


                  child: Image.asset("assets/product1.png",height: 150,),
                )
              ),
                SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Make Up", style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 24),),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                      Icon(Icons.star_border,color: Colors.yellow,size: 15,)

                    ],
                  )
                ],
              ),

              SizedBox(height: 10,),

              Text("Pink Lipstick", style: TextStyle(color: white54,fontWeight: FontWeight.bold,fontSize: 20),),


              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("\$12.50", style: TextStyle(color: pink,fontWeight: FontWeight.bold,fontSize: 30),),
                      SizedBox(width: 15,),
                      Text("\$15.50", style: TextStyle(color: white54,fontWeight: FontWeight.bold,fontSize: 18,decoration: TextDecoration.lineThrough),),
                    ],
                  ),

                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),bottomLeft: Radius.circular(30.0),topRight: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              _decrementCounter();
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),bottomLeft: Radius.circular(30.0))
                                ),
                              child: Text("-",style: TextStyle(fontSize: 35),),
                            ),
                          ),
                          Container(

                            child: Center(child: Text("$_counter",style: TextStyle(fontSize: 30),)),
                          ),
                          GestureDetector(
                            onTap: (){
                              _incrementCounter();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:  BorderRadius.only(topLeft: Radius.circular(30.0),bottomLeft: Radius.circular(30.0))
                              ),
                              child: Text("+",style: TextStyle(fontSize: 35),),
                            ),
                          ),

                        ],
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 10,),

              Text("Description", style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 20),),
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries", style: TextStyle(color: white54,fontWeight: FontWeight.bold,fontSize: 14),),
              SizedBox(height: 10,),
              Text("Reviews", style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                  Container(

                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(child: Text("M",style: TextStyle(fontSize: 30,color: Colors.white),)),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Alex", style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 24),),
                                    SizedBox(width: 50,),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                                        Icon(Icons.star_border,color: Colors.yellow,size: 15,)

                                      ],
                                    )
                                  ],
                                ),
                                Text("Lorem Ipsum is simply ....")
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                    SizedBox(width: 20,),
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(child: Text("M",style: TextStyle(fontSize: 30,color: Colors.white),)),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Jackson", style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 24),),
                                    SizedBox(width: 50,),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                                        Icon(Icons.star,color: Colors.yellow,size: 15,),
                                        Icon(Icons.star_border,color: Colors.yellow,size: 15,)

                                      ],
                                    )
                                  ],
                                ),
                                Text("Lorem Ipsum is simply ....")
                              ],
                            )
                          ],
                        ),
                      ),
                    )




                  ],
                ),
              ),

              SizedBox(height: 25,),

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
                    onPressed: (){},
                    child: Text("Add To Cart",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),)
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
