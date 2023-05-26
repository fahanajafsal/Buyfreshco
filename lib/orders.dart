import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class orders extends StatefulWidget {
  const orders({Key? key}) : super(key: key);

  @override
  State<orders> createState() => _ordersState();
}

class _ordersState extends State<orders> {
 
  List images=['images/rice.jpg','images/soap.jpg','images/turmaric.jpg','images/tomatooo.jpg','images/paste.jpg','images/potatoooo.jpg','images/facewash.jpg','images/apple.png','images/salt.png','images/sugar.png'];
List name=["Delivered on april 03","Delivered on april 03","Delivered on april 03","Delivered on april 03","Delivered on april 03","Delivered on april 23","Delivered on june 07","Delivered on june 07","Delivered on june 07"];
List price=["Rice","wa Soap","Turmeric powder","tomato","Paste","potato","Face wash","apple","salt","sugar",];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.greenAccent,
        
        title: Text("My orders"),
      ),
      body: 
      
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            
          
              itemCount: name.length,
              itemBuilder: (context, index) {
               
                return Card(
                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                       
                          CircleAvatar(
                            radius: 60,
                            
                          backgroundImage: AssetImage(images[index]),
                          ),
                       SizedBox(width: 30,),
                        Column(
                          children: [
                            
                          Text(name[index],style: TextStyle(fontSize: 15,),),
                          Text(price[index])
        
                          ],
                        ),
                
                        
                        
                             
                        ],
                    ),
                    ]
                  )
                );
              }
            ),
        )
    );
  }
}