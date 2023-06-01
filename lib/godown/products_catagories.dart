import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:hello_world/api.dart';
import 'package:hello_world/godown/detailpage.dart';


class product_catagories extends StatefulWidget {
  final int id;

  product_catagories({required this.id});

  @override
  State<product_catagories> createState() => _ProductcatagoriesState();
}

class _ProductcatagoriesState extends State<product_catagories> {
  List _loaddata=[];
  fetchData() async {
    int id=widget.id;
    var res = await Api()
        .getData('/api/category_product_view/'+id.toString());
    if (res.statusCode == 200) {
      var items = json.decode(res.body)['data'];
      print(items);
      setState(() {
        _loaddata = items;

      });
    } else {
      setState(() {
        _loaddata = [];
      /*  Fluttertoast.showToast(
          msg:"Currently there is no data available",
          backgroundColor: Colors.grey,
        );*/
      });
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }
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
                                child: GridView.builder(
                                  itemCount: _loaddata.length,
                                  shrinkWrap: true,
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 4.0,
                                      mainAxisSpacing: 4.0
                                  ),
                                  itemBuilder: (BuildContext context, int index) {
                                    return  Container(
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
                                            int id=_loaddata[index]['id'];

                                            Navigator.push(context,MaterialPageRoute(builder: (context)=>detailpage(
                                              id:id
                                            )));

                                          },
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [

                                              Container(
                                                height: size.height*.25,
                                                width: size.width*.30,
                                                child: Image.network(Api().url+_loaddata[index]['images'],
                                                  fit: BoxFit.cover,
                                                  alignment: Alignment.topCenter,
                                                ),
                                              ),
                                              Spacer(),
                                              Text(_loaddata[index]['productname'],textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),




                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },


                                      // Container(
                                      //   padding: EdgeInsets.all(20),
                                      //   decoration: BoxDecoration(
                                      //       color: Colors.white,
                                      //       borderRadius: BorderRadius.circular(15),
                                      //       boxShadow: [
                                      //         BoxShadow(
                                      //             offset: Offset(0,17),
                                      //             blurRadius: 14,
                                      //             spreadRadius: -23
                                      //         )
                                      //       ]
                                      //   ),
                                      //   child: Material(
                                      //     color: Colors.transparent,
                                      //     child: InkWell(
                                      //       onTap: () {
                                      //
                                      //       },
                                      //       child: Column(
                                      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      //         children: [
                                      //           Container(
                                      //       height: size.height*.25,
                                      //         width: size.width*.30,
                                      //
                                      //
                                      //           child: Image.asset('images/grapes.jpg',
                                      //             fit: BoxFit.cover,
                                      //             alignment: Alignment.topCenter,
                                      //           ),
                                      //       ),
                                      //           Spacer(),
                                      //           Text('grapes',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      //
                                      //
                                      //
                                      //
                                      //         ],
                                      //       ),
                                      //       ),
                                      //     ),
                                      //   ),
                                      //
                                      //
                                      // Container(
                                      //   padding: EdgeInsets.all(20),
                                      //   decoration: BoxDecoration(
                                      //       color: Colors.white,
                                      //       borderRadius: BorderRadius.circular(15),
                                      //       boxShadow: [
                                      //         BoxShadow(
                                      //             offset: Offset(0,17),
                                      //             blurRadius: 14,
                                      //             spreadRadius: -23
                                      //         )
                                      //       ]
                                      //   ),
                                      //   child: Material(
                                      //     color: Colors.transparent,
                                      //     child: InkWell(
                                      //       onTap: () {
                                      //
                                      //       },
                                      //       child: Column(
                                      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      //         children: [
                                      //       Container(
                                      //       height: size.height*.25,
                                      //         width: size.width*.30,
                                      //           child:
                                      //           Image.asset('images/stbry.jpg',
                                      //               fit: BoxFit.cover,
                                      //             alignment: Alignment.topCenter,
                                      //           ),
                                      //       ),
                                      //           Spacer(),
                                      //           Text('strawberry',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      //
                                      //
                                      //
                                      //
                                      //         ],
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                      // Container(
                                      //   padding: EdgeInsets.all(20),
                                      //   decoration: BoxDecoration(
                                      //       color: Colors.white,
                                      //       borderRadius: BorderRadius.circular(15),
                                      //       boxShadow: [
                                      //         BoxShadow(
                                      //             offset: Offset(0,17),
                                      //             blurRadius: 14,
                                      //             spreadRadius: -23
                                      //         )
                                      //       ]
                                      //   ),
                                      //   child: Material(
                                      //     color: Colors.transparent,
                                      //     child: InkWell(
                                      //       onTap: () {
                                      //
                                      //       },
                                      //       child: Column(
                                      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      //         children: [
                                      //           Container(
                                      //
                                      //       height: size.height*.25,
                                      //         width: size.width*.30,
                                      //         child:
                                      //           Image.asset('images/mango.jpg',
                                      //               fit: BoxFit.cover,
                                      //             alignment: Alignment.topCenter,
                                      //           ),
                                      //           ),
                                      //           Spacer(),
                                      //           Text('mango',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      //
                                      //            // Text("RS:110"),
                                      //            //  Text("Quantity:10KG")
                                      //         ],
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                      //
                                      //
                                      //
                                      //
                                      //  Container(
                                      //   padding: EdgeInsets.all(20),
                                      //   decoration: BoxDecoration(
                                      //       color: Colors.white,
                                      //       borderRadius: BorderRadius.circular(15),
                                      //       boxShadow: [
                                      //         BoxShadow(
                                      //             offset: Offset(0,17),
                                      //             blurRadius: 14,
                                      //             spreadRadius: -23
                                      //         )
                                      //       ]
                                      //   ),
                                      //   child: Material(
                                      //     color: Colors.transparent,
                                      //     child: InkWell(
                                      //       onTap: () {
                                      //
                                      //       },
                                      //       child: Column(
                                      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      //         children: [
                                      //       Container(
                                      //       height: size.height*.25,
                                      //         width: size.width*.30,
                                      //           child:
                                      //           Image.asset('images/mango.jpg',
                                      //               fit: BoxFit.cover,
                                      //             alignment: Alignment.topCenter,
                                      //           ),
                                      //       ),
                                      //           Spacer(),
                                      //           Text('mango',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      //
                                      //
                                      //         ],
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                      //
                                      //
                                      //  Container(
                                      //   padding: EdgeInsets.all(20),
                                      //   decoration: BoxDecoration(
                                      //       color: Colors.white,
                                      //       borderRadius: BorderRadius.circular(15),
                                      //       boxShadow: [
                                      //         BoxShadow(
                                      //             offset: Offset(0,17),
                                      //             blurRadius: 14,
                                      //             spreadRadius: -23
                                      //         )
                                      //       ]
                                      //   ),
                                      //   child: Material(
                                      //     color: Colors.transparent,
                                      //     child: InkWell(
                                      //       onTap: () {
                                      //
                                      //       },
                                      //       child: Column(
                                      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      //         children: [
                                      //       Container(
                                      //       height: size.height*.25,
                                      //         width: size.width*.30,
                                      //           child:
                                      //           Image.asset('images/kiwi.jpg',
                                      //               fit: BoxFit.cover,
                                      //             alignment: Alignment.topCenter,
                                      //           ),
                                      //       ),
                                      //           Spacer(),
                                      //           Text('kiwi',textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      //
                                      //
                                      //
                                      //         ],
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                       
 

                                     )
                            )
                          ] )
                  )
              )
            ] )));
  }
}