import 'package:flutter/material.dart';
import 'package:projectflutter/Task.dart';
import 'package:projectflutter/profile.dart';

class  Mytask extends StatelessWidget {
  const Mytask ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: content(context),
    );
  }
  Widget content(BuildContext context){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(   
            alignment: Alignment.topCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  child: Image.asset("assets/images/Property 1=Variant3.png",
                  fit: BoxFit.cover,),
                  
                ),
            Positioned(
              top: 70,
              left: 20,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.adaptive.arrow_back,color: Colors.black,),
              ),),
             Positioned(
                    top: 100, 
                    child: Column(
                      children: [
                      CircleAvatar(
                        radius: 80, 
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/cat.jpg",
                            fit: BoxFit.cover,
                            width: 160, 
                            height: 160,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10), 
                      const Text(
                        "Lana Delrey", 
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              
              ],
            ),
            const SizedBox(height: 10,),
            Padding(
             padding: const EdgeInsets.only(left: 30,
                top: 30,
                right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Container(
                child: const Text("Email",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
                ),          
              ),
              const SizedBox(height: 20,),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Lana@gmail.com",
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.edit,color: Colors.grey,),
                ),
              ),
              const SizedBox(height: 20,),
                 const Text("Phone",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
                ), 
                const SizedBox(height: 20,),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "+885 12 356 989",
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.edit,color: Colors.grey,),
                ),
              ), 
              SizedBox(height: 50,),
              Center(
                child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[300],
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          )
                        ) ,
                        onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>myedit()
                        )), 
                        child: const Text("Log Out",
                        style: TextStyle(color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500
                        ),
                        ),
                            
                        ),
              ),        
                ],
              ),
            )
        ],
      );
      
    }
}