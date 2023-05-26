import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hello_world/counter/product_details.dart';

class salesreport extends StatefulWidget {
  const salesreport({Key? key}) : super(key: key);

  @override
  State<salesreport> createState() => _salesreportState();
}

class _salesreportState extends State<salesreport> {
List name=['aparna ','saleem','midhun','arjun P','afeefa','fahana ','farsana'];
List date=["5-7-2022","6-7-2023","5-3-2022","6-7-2022","7-7-2023","7-9-2023","5-4-2023"];
List totalprice=["2000","3500","1100","2200","4005","600","4000","3000"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    

  appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text('sales Report',),
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
                               ElevatedButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>product_details(),));
                        
                               },

                               
                                child: Text("Product Details",style: TextStyle(fontSize: 10,) 
                                 
                                ),
                         
                                )
                          ]
                               )
                                ],
                              ),
                          ),
                     ],
                      )
                        );    
                  }
              ),



                                 

  
            ),
                   Container( 
                    padding: EdgeInsets.only(left: 10) ,
   width: 500,  
    height: 50,  
       color: Colors.white,   
     child: Text("Total Amount :\n6000", style: TextStyle(fontSize: 20)), 
    
 ) , 
      
          ]                  
                        
        ),

    
            );
          
        
          
                    
              
                  }
         

    
  }
