import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/godown/detailpage.dart';


class product_catagories extends StatefulWidget {
  const product_catagories({Key? key}) : super(key: key);

  @override
  State<product_catagories> createState() => _ProductcatagoriesState();
}

class _ProductcatagoriesState extends State<product_catagories> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('products',),
        ),
        body: Stack(
            children: [
              Container(
                // height: size.height * .45,
                  decoration: BoxDecoration(
                    color: Colors.white,)
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

                                              Navigator.push(context,MaterialPageRoute(builder: (context)=>detailpage()));

                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [

                                                Container(
                                                  height: size.height*.25,
                                                  width: size.width*.30,
                                                  child: Image.asset('images/apple.png',
                                                    fit: BoxFit.cover,
                                                    alignment: Alignment.topCenter,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text('apple',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                               



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

                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                            height: size.height*.25,
                                              width: size.width*.30,


                                                child: Image.asset('images/grapes.jpg',
                                                  fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('grapes',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                               



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

                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                            Container(
                                            height: size.height*.25,
                                              width: size.width*.30,
                                                child:
                                                Image.asset('images/stbry.jpg',
                                                    fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('strawberry',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                                              


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

                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(

                                            height: size.height*.25,
                                              width: size.width*.30,
                                              child:
                                                Image.asset('images/mango.jpg',
                                                    fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                                ),
                                                Spacer(),
                                                Text('mango',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                
                                                 // Text("RS:110"),
                                                 //  Text("Quantity:10KG")
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

                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                            Container(
                                            height: size.height*.25,
                                              width: size.width*.30,
                                                child:
                                                Image.asset('images/mango.jpg',
                                                    fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('mango',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
    

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

                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                            Container(
                                            height: size.height*.25,
                                              width: size.width*.30,
                                                child:
                                                Image.asset('images/kiwi.jpg',
                                                    fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('kiwi',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                   


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
            ] )));
  }
}