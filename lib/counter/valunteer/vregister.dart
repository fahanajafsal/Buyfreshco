import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/Login.dart';
import 'package:hello_world/counter/valunteer/valunteerhome.dart';




class vregister extends StatefulWidget {
  const vregister({Key? key}) : super(key: key);

  @override
  State<vregister> createState() => _vregisterState();
}

class _vregisterState extends State<vregister> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
        ),
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              const Text("Register",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        label: Text("name "),
                        hintText: "Enter your name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)
                        ))

                ),
              ),





              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.place),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)
                      ),
                      label: Text("Place"),
                    )

                ),
              ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)
                      ),
                      label: Text("address"),
                      hintText: "Enter your address",
                    )

                ),
              ),
              RadioListTile(
                activeColor: Colors.purple,
                title: Text("Male"),
                value: "male",
                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),

              RadioListTile(
                activeColor: Colors.purple,
                title: Text("Female"),
                value: "female",
                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
              RadioListTile(
                activeColor: Colors.purple,
                title: Text("Transgender"),
                value: "Transgender",
                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),
              RadioListTile(
                activeColor: Colors.purple,
                title: Text("Prefer not to Say"),
                value: "Prefer not to Say",
                groupValue: gender,
                onChanged: (value){
                  setState(() {
                    gender = value.toString();
                  });
                },
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        label: const Text("Email"),
                        hintText: "Enter your Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)
                        ))

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone),
                        label: const Text("Phone Number"),
                        hintText: "Enter your Phone Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)
                        ))

                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        label: Text("Password"),
                        hintText: "Enter your Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)
                        ))

                ),
              ),

              const SizedBox(height: 20,),
              ElevatedButton(onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const valunteerhome()));
              },
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),primary: Colors.purple,fixedSize: Size(350, 57)),
                child: const Text("Signup",style: TextStyle(
                    fontSize: 18,color: Colors.white
                )),),

              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?",style: TextStyle(fontSize: 20),),TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const login()));
                  }, child: const Text("Login",style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold),))

                ],

              ),

            ],
          ),
        ),
      ),
      );
  }
}