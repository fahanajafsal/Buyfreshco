import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/godown/products_catagories.dart';


class viewProduct extends StatefulWidget {
  const viewProduct({Key? key}) : super(key: key);

  @override
  State<viewProduct> createState() => _viewProductState();
}

class _viewProductState extends State<viewProduct> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('catogaries',),
        ),
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
Navigator.push(context, MaterialPageRoute(builder: (context)=>product_catagories()));
                                            },
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [

                                                Container(
                                                  height: size.height*.25,
                                                  width: size.width*.30,
                                                  child: Image.asset('images/fruitses.jpg',
                                                    fit: BoxFit.cover,
                                                    alignment: Alignment.topCenter,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text('fruits',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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


                                                child: Image.asset('images/vegetables.jpg',
                                                  fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('vegetables',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                Image.asset('images/freez.jpg',
                                                    fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('frozen foods',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                Image.asset('images/drinks.jpg',
                                                    fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('Drinks',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                Image.asset('images/dairy.jpg',
                                                    fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('Dairy',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                Image.asset('images/care.jpg',
                                                    fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('personal care',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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
                                                Image.asset('images/cleaning.jpg',
                                                    fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                            ),
                                                Spacer(),
                                                Text('Household and cleaning',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

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