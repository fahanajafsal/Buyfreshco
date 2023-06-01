import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api.dart';


 class detailpage extends StatefulWidget {
  final int id;

  const detailpage({Key? key, required this.id}) : super(key: key);




  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {

  bool   _isLoading = false;
  late SharedPreferences localStorage;
  TextEditingController productnameController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController quantityController=TextEditingController();
  TextEditingController priceController=TextEditingController();
  TextEditingController offerdetailsController=TextEditingController();
  var images;

  Future<void> _viewPro() async {
    var prefs = await SharedPreferences.getInstance();
    int id = widget.id;
    var res = await Api()
        .getData('/api/product_single_view/' + id.toString());
    var body = json.decode(res.body);
    print(body);
    setState(() {
      var productname = body['data']['productname'];
      var description = body['data']['description'];
      var quantity = body['data']['quantity'];
      var price = body['data']['price'];
      var offerdetails = body['data']['offerdetails'];
       images = body['data']['images'];


      productnameController.text = productname;
      descriptionController.text=description;
      quantityController.text=quantity;
      priceController.text = price;
      offerdetailsController.text = offerdetails;

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewPro();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Details',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[

        ],
      ),

      body: ListView(

          children: [

            SizedBox(height: 25.0),
            Hero(
                tag: "assetPath",
                child: Image.network(Api().url+images,
                    height: 150.0,
                    width: 100.0,
                    fit: BoxFit.contain
                )
            ),
            SizedBox(height: 20),


            Row(
              children: [
                SizedBox(width: 200,),
                Expanded(child: Text("Product name :",style:TextStyle(fontSize: 20),)),
               
                Expanded(
                  child: Text(
                      productnameController.text  ,

                      style: TextStyle(
                          color: Color(0xFFF17532),

                          fontSize: 24.0)),
                ),
              ],
            ),

            SizedBox(height: 20.0),
            SizedBox(width: 50,),
            Expanded(child: Text("description :",style:TextStyle(fontSize: 20))),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Text(
                    descriptionController.text  ,
                    textAlign: TextAlign.center,
                    style: TextStyle(

                        fontSize: 16.0,
                        color: Color(0xFFF17532))
                ),
              ),
            ),

            SizedBox(height: 20.0),

            SizedBox(width:200,),
            Expanded(child: Text("price :",style:TextStyle(fontSize: 20))),
            Expanded(
              child: Text(
                  priceController.text,
                  style: TextStyle(

                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))),
            ),
            SizedBox(height: 20.0),
            SizedBox(width: 50,),
            Expanded(child: Text("Quantity :",style:TextStyle(fontSize: 20))),
            Expanded(
              child: Text(
                  quantityController.text,
                  style: TextStyle(

                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))),
            ),
            SizedBox(height: 20.0),
            Expanded(child: Text("offerdetails :",style:TextStyle(fontSize: 20))),
            Expanded(
              child: Text(
                  offerdetailsController.text,

                  style: TextStyle(

                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))),
            ),



          ]
      ),

    );
  }
}