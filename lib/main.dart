import 'package:flutter/material.dart';
import 'package:hello_world/cartitemsample.dart';
import 'package:hello_world/counter/counterhome.dart';
import 'package:hello_world/counter/cregister.dart';
import 'package:hello_world/counter/payment_details.dart';
import 'package:hello_world/counter/product_details.dart';
import 'package:hello_world/counter/salesreport.dart';
import 'package:hello_world/counter/valunteer/valunteerhome.dart';
import 'package:hello_world/counter/valunteer/vregister.dart';
import 'package:hello_world/counter/viewdelivery.dart';
import 'package:hello_world/godown/detailpage.dart';

import 'package:hello_world/godown/goddownhome.dart';
import 'package:hello_world/godown/gregister.dart';
import 'package:hello_world/godown/products_catagories.dart';

import 'package:hello_world/godown/vieworder.dart';
import 'package:hello_world/offers.dart';
import 'package:hello_world/order_status.dart';
import 'package:hello_world/orders.dart';

import 'package:hello_world/payment.dart';

import 'package:hello_world/profile.dart';
import 'package:hello_world/register.dart';
import 'package:hello_world/success.dart';
import 'package:hello_world/user/wait.dart';
import 'package:hello_world/welcome.dart';
import 'package:hello_world/godown/vieworder.dart';


import 'homescreen.dart';
import 'login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home:cregister()
    );
  }
}
