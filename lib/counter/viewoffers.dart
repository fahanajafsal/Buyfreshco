import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hello_world/payment.dart';

class viewoffers extends StatefulWidget {
  const viewoffers({Key? key}) : super(key: key);

  @override
  State<viewoffers> createState() => _viewoffersState();
}

class _viewoffersState extends State<viewoffers> {
  List images=['images/tomatooo.jpg','images/potatoooo.jpg','images/apple.png','images/salt.png','images/sugar.png'];
List name=["Tomato","Potato","Apple","Salt","Sugar"];
List price=["20","30","110","20","45","60"];
List offers=[" 5% OFF"," 4% OFF "," 10% OFF","Buy 1 Get 1 Free"," 5% OFF"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.pink,
        
        title: Text("Offers here!"),
      ),
      body: 
        Column(
          children: [
            Expanded(
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
                                
                              Text(name[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              Text("Rs: "+price[index]),
                              ]
                            ),

                            SizedBox(width: 120,),
                             Column( 
                             children:[
                              Text("OFFER: "+offers[index],textAlign: TextAlign.right,style: TextStyle(fontSize: 15,color: Colors.red),)
]
                             )
                              ],
                            ),
                    
                            
                            
                                 
                            ],
                      )
                        );
                         
                  }
              )
  
            )       
                        ]
        )
  
          
                    );
              
                  }
         
  
}