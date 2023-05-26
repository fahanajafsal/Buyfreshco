import 'package:flutter/material.dart';



class payment_details extends StatefulWidget {
  const payment_details({Key? key}) : super(key: key);

  @override
  State<payment_details> createState() => _ClassNotifyState();
}

class _ClassNotifyState extends State<payment_details> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text('Payment Details',),
        ),

        body: Padding(
          padding: EdgeInsets.all(5),
          child: ListView.separated(
            itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.pinkAccent,
                    child: Icon(Icons.label_important, size: 25,color: Colors.white,)
                ) ,
                title: Text("Payment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                subtitle: Text(" arjun CA  is paid 2000."),
        
                trailing: Text('Date'),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(height: 30, thickness: 1,);
            },
            itemCount: 13,

          ),
        )


    );
  }
}