import 'package:flutter/material.dart';

import 'package:hello_world/counter/payment_details.dart';
import 'package:hello_world/counter/salesreport.dart';
import 'package:hello_world/counter/valunteer/payment_status.dart';
import 'package:hello_world/counter/viewdelivery.dart';
import 'package:hello_world/counter/viewoffers.dart';
import 'package:hello_world/godown/vieworder.dart';

// class counterhome extends StatefulWidget {
//   const counterhome({Key? key}) : super(key: key);

//   @override
//   State<counterhome> createState() => _counterhomeState();
// }

// class _counterhomeState extends State<counterhome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(" Its Time \nTo Delivery!!  ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25
//         ),
//         ),
// toolbarHeight: 150,

// backgroundColor: Colors.green



//       ),
//       backgroundColor: Colors.white60,

// body: Container(
//   child: Padding(padding: EdgeInsets.all(5),
//   child:GridView(
// children: [

//  GestureDetector(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>viewdelivery()));
//               },

//   child:Container(
//     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:Colors.green
//     ),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//          Image.asset("images/delivered.png",height: 80,),
//          SizedBox(height: 10,),
//         Text("VIEW DELIVERY",style: TextStyle(fontSize: 20,color: Colors.black),)
//       ],
//     ),
//   ),

//  ),


//  GestureDetector(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>viewoffers()));
//               },


// child:Container(
//     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:Colors.redAccent),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//       Image.asset("images/discount.png",height: 80,),
//       SizedBox(height: 10,),
//         Text("VIEW OFFERS",style: TextStyle(fontSize: 20,color: Colors.black),)
//       ],
//     ),
//   ),
//  ),

//  GestureDetector(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>salesreport()));
//               },

// child:Container(
//     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:Colors.redAccent),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//            Image.asset("images/seo-report.png",height: 80,),
//            SizedBox(height: 10,),
//         Text("SALES REPORT",style: TextStyle(fontSize: 20,color: Colors.black),)
//       ],
//     ),
//   ),
//  ),

 
//  GestureDetector(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>payment_details()));
//               },
  
// child:Container(
//     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:Colors.redAccent),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset("images/cash-payment.png",height: 80,),
//         SizedBox(height: 10,),
//         Text("VIEW PAYMENT",style: TextStyle(fontSize: 20,color: Colors.black),)
//       ],
//     ),
//   ),),


// ],
//  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),

//   )
// ),










//     ),
//     );
//   }
// }

class counterhome extends StatefulWidget {
  const counterhome({Key? key}) : super(key: key);

  @override
  State<counterhome> createState() => _counterhomeState();
}
class _counterhomeState extends State<counterhome> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(" ITS TIME TO DELIVERY",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25
        ),
        ),
toolbarHeight: 100,
backgroundColor: Colors.yellow.shade400
  ),
      backgroundColor: Colors.white60,

 body: Stack(
            children: [
              Container(
                // height: size.height * .45,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade300,)
              ),
              SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                            Expanded(
                                child: GridView.count(
                                    crossAxisCount: 2,
                                    childAspectRatio: .85,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                    children: [

                                      Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0,17),
                                                  blurRadius: 14,
                                                  spreadRadius: -23
                                              )
                                            ]
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {
  Navigator.push(context, MaterialPageRoute(builder: (context)=>viewdelivery()));
                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [

                                                Container(
                                                  height: 100,
                                                  width: 100,
                                                  padding: EdgeInsets.only(bottom:20 ),
                                                  child: Image.asset('images/order-now.png',
                                                    fit: BoxFit.cover,
                                                    alignment: Alignment.topCenter,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text('View delivery',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0,17),
                                                  blurRadius: 14,
                                                  spreadRadius: -23
                                              )
                                            ]
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>viewoffers()));
                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                            height: 100,
                                              width:100, 


                                                child: Image.asset('images/discount.png',
                                                  fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('view offers',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                                              ],
                                            ),
                                            ),
                                          ),
                                        ),


                                      Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0,17),
                                                  blurRadius: 14,
                                                  spreadRadius: -23
                                              )
                                            ]
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {
     Navigator.push(context, MaterialPageRoute(builder: (context)=>payment_status()));
                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                            Container(
                                            height:100, 
                                              width: 50,
                                                child:
                                                Image.asset('images/cash-payment.png',
                                                    fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('View payment',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                     Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0,17),
                                                  blurRadius: 14,
                                                  spreadRadius: -23
                                              )
                                            ]
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>salesreport()));
                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                            height: 100,
                                              width:100, 


                                                child: Image.asset('images/seo-report.png',
                                                  fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('sales report',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                                              ],
                                            ),
                                            ),
                                          ),
                                        ),
    


                                    ] )
                            )
                          ] )
                  )
              )
            ] )
            
            
            );
                
            
  }
}