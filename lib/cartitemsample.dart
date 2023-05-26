import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hello_world/order_status.dart';
import 'package:hello_world/payment.dart';

class cartitemsample extends StatefulWidget {
  const cartitemsample({Key? key}) : super(key: key);

  @override
  State<cartitemsample> createState() => _cartitemsampleState();
}

class _cartitemsampleState extends State<cartitemsample> {
  List images=['images/tomatooo.jpg','images/potatoooo.jpg','images/apple.png','images/salt.png','images/sugar.png'];
List name=["Tomato","Potato","Apple","Salt","Sugar"];
List price=["20","30","110","20","45","60"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.pink,
        
        title: Text("CART"),
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
                              Text("Rs: "+price[index])
            
                              ],
                            ),
                    
                            
                            
                                 
                            ],
                        ),
                          Row(
                          children: [
                            Column(
                              children: [
                               Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5)
                                ),
            
                                child: Padding(padding: 
                                EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.remove,color: Colors.white,),
            
                                    Text("0"),
                                    Icon(Icons.add,color: Colors.white,)
            
                                  ],
                                ),
                                
                                ),
                                
                               ),
                              ],
                            ),
                            
                               IconButton(onPressed: (){}, icon: Icon(Icons.delete,
                               color: Colors.red,)),
                          ],
                          
                        )
                        ]
                        
                        )
            
                        
                       
                    );
                    
                
                  }
                  ),


                  
            ),

            ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>order_status()));
     
            }, child: Text("place order"))
          ],
        ),
            

          
            );
  }
}
       
 
    
  