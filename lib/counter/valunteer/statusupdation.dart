import 'package:flutter/material.dart';

import 'package:hello_world/order_status.dart';

class statusupdation extends StatefulWidget {
  const statusupdation({Key? key}) : super(key: key);

  @override
  State<statusupdation> createState() => _statusupdationState();
}

class _statusupdationState extends State<statusupdation> {
List name=['aparna c','name','name','name','name','aparna c','name','name','name','name'];
List date=["5-7-2021","date","date","date","date","5-7-2021","date","date","date","date"];
List totalprice=["2000","3500","1100","2200","4005","600","2000","3500","1100","4005","600"];
List status=[" delivered"," delivered ","not delivered"," not delivered"," not delivered"," delivered"," delivered ","not delivered"," not delivered"," not delivered"];


  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(' order_status'),

          toolbarHeight: 40,
        backgroundColor: Colors.pink,
        
      ),


body: 
        Column(
          children: [
            Expanded(
              child: ListView.builder(
              
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                   
                    return Card(

                      color: Colors.white,
                    
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                             
                              
                              Column(
                                children: [
                           
                                Text("Name :"+name[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text("Date :"+date[index],),
                               
                                SizedBox(height: 10,),
                                Text("Total amount :"+totalprice[index]),
                                ]
                              ),
                          
                              SizedBox(width: 250,),
                               Column( 
                               children:[
                                Text(status[index],textAlign: TextAlign.right,style: TextStyle(fontSize: 15,color: Colors.green),)
                          ]
                               )
                                ],
                              ),
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



 