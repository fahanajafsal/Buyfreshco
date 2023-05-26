import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class product_details extends StatefulWidget {
  const product_details({Key? key}) : super(key: key);

  @override
  State<product_details> createState() => _product_detailsState();
}

class _product_detailsState extends State<product_details> {

List name=['Apple','Rice','mango','sugar','orange','onion','tomato','chocolate','shampoo','sugar','orange','onion','tomato','chocolate','shampoo'];
List quantity=['kg','kg','kg','kg','kg','kg','kg','kg','kg','kg','kg','kg','kg','kg'];
List totalprice=["110","80","510","200","600",'220','110','400','170',"200","600",'220','110','400','170'];

  @override



  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
        title:Text(' product_details'),

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
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        
                          children: [
                        
                          
                          Text("name :"+name[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                          SizedBox(height: 10,),

                           Text("Rs:"+totalprice[index],textAlign: TextAlign.right,style: TextStyle(fontSize: 15,color: Colors.green,),),
                           
                        
                            ],
                          ),
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



 


    
  
