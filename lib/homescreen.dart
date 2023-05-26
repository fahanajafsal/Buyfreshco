

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/cart.dart';
import 'package:hello_world/cartitemsample.dart';
import 'package:hello_world/login.dart';
import 'package:hello_world/offers.dart';
import 'package:hello_world/orders.dart';
import 'package:hello_world/payment.dart';
import 'package:hello_world/profile.dart';
import 'package:hello_world/purchase.dart';


class homescreen extends StatefulWidget {
  const homescreen({ Key? key }) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int indexnum=0;
  final List<Widget>screen=[
    homescreen(),
    profile(),
  cart(),
      ];
  
Widget currentIndex=homescreen();

  get currentTab => null;
 




    @override
  Widget build(BuildContext context) {
   
    return Scaffold(
     

  bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = homescreen();
                  var currentTab = 0;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Icon(Icons.home_outlined,size: 30,color: currentTab==0 ? Colors.blue : Colors.grey,),

                  Text('Home',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==0 ? Colors.blue : Colors.black),)
                ],
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex=profile();
                 var currentTab = 1;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));

              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Icon(Icons.person,size: 30,color: currentTab==1 ? Colors.blue : Colors.grey),
                  Text('Account',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==1 ? Colors.blue : Colors.black),)
                ],
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex=cart();
                  var currentTab = 2;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>cartitemsample()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Icon(Icons.shopping_cart,size: 30,color: currentTab==2 ? Colors.blue : Colors.grey),
                  Text('CART',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==2 ? Colors.blue : Colors.black),)
                ],
              ),
            ),

     GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex=cart();
                  var currentTab = 3;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Icon(Icons.logout,size: 30,color: currentTab==2 ? Colors.blue : Colors.grey),
                  Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,color: currentTab==2 ? Colors.blue : Colors.black),)
                ],
              ),
            ),





          ],
        ),
      ),







   
  body:
   SingleChildScrollView(
     child: Column(
       children: [
       CarouselSlider(
                      options: CarouselOptions(height: 160.0),
                      items: ["images/1.jpg","images/2.jpg","images/1.jpg"].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("$i"),fit: BoxFit.cover),

                              ),

                            );
                          },
                        );
                      }).toList(),
        ),
         Container(
          height: 400,
          
           child:Padding(
          padding:const EdgeInsets.all(20),
          child: GridView(
          children: [

              GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>offers()));
              },
   
          child:  Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.yellow,),
   
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/discount.png",height: 80,),
                Text("Offers",style: TextStyle(color: Colors.white,fontSize: 30),)
              ],
            ),
            ),
              ),
            
           
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>purchase()));
              },
               child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.blueAccent,),
             
                   child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/buy.png",height: 80,),
                  Text("purchase",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],
                   ),
                   ),
             ),

 GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>orders()));
              },

             
             child:Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.pink,),
   
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset("images/order-now.png",height: 80,),
                Text("my orders",style: TextStyle(color: Colors.white,fontSize: 30),)
              ],
            ),
            ),
 ),
              GestureDetector(
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>payment()));
              },
            
          child:   Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(40),color:Colors.redAccent,),
   
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset("images/cashless-payment.png",height: 80,),
                Text("payments",style: TextStyle(color: Colors.white,fontSize: 30),)
              ],
            ),
            ),
               ),
            
          ],
   
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
     ),
   ),
   
              ),
       ],
     ),
   )    );
  }

  column() {}
}

