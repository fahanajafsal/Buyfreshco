import 'package:flutter/material.dart';
import 'package:hello_world/godown/vieworder.dart';
import 'package:hello_world/godown/viewproduct.dart';


class goddownhome extends StatefulWidget {
  const goddownhome({Key? key}) : super(key: key);

  @override
  State<goddownhome> createState() => _goddownhomeState();
}

class _goddownhomeState extends State<goddownhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" fresh groceries here !  ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25
        ),
        ),
toolbarHeight: 150,

backgroundColor: Colors.greenAccent



      ),
      backgroundColor: Colors.white60,

body: Container(
  child: Padding(padding: EdgeInsets.all(5),
  child:GridView(
children: [

 GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>viewProduct()));
              },

  child:Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:Colors.white
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Image.asset("images/delivered.png",height: 80,),
         SizedBox(height: 10,),
        Text("VIEW PRODUCTS",style: TextStyle(fontSize: 20,color: Colors.black),)
      ],
    ),
  ),

 ),


 GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>vieworder()));
              },


child:Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:Colors.white),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Image.asset("images/order-now.png",height: 80,),
      SizedBox(height: 10,),
        Text("VIEW ORDER",style: TextStyle(fontSize: 20,color: Colors.black),)
      ],
    ),
  ),
 ),

],
 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),

  )
),


    ),
    );
  }
}