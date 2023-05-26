import 'package:flutter/material.dart';
import 'package:hello_world/counter/valunteer/payment_status.dart';
import 'package:hello_world/counter/valunteer/statusupdation.dart';

import 'package:hello_world/godown/vieworder.dart';





class valunteerhome extends StatefulWidget {
  const valunteerhome({Key? key}) : super(key: key);

  @override
  State<valunteerhome> createState() => _valunteerhomeState();
}
class _valunteerhomeState extends State<valunteerhome> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(" FAST DELIVERY  HERE",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25
        ),
        ),
toolbarHeight: 100,
backgroundColor: Colors.green
  ),
      backgroundColor: Colors.white60,

 body: Stack(
            children: [
              Container(
                // height: size.height * .45,
                  decoration: BoxDecoration(
                    color: Colors.green,)
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
  Navigator.push(context, MaterialPageRoute(builder: (context)=>vieworder()));
                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [

                                                Container(
                                                  height: 100,
                                                  width: 100,
                                                  child: Image.asset('images/order-now.png',
                                                    fit: BoxFit.cover,
                                                    alignment: Alignment.topCenter,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text('View Order',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
Navigator.push(context, MaterialPageRoute(builder: (context)=>statusupdation()));
                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                            height: 100,
                                              width:100, 


                                                child: Image.asset('images/delivered.png',
                                                  fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('status_updation',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                Text('payment status',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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