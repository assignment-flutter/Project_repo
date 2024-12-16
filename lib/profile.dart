// ignore_for_file: dead_code
import 'package:flutter/material.dart';
import 'package:projectflutter/create_task.dart';
import 'package:projectflutter/model/List_tale.dart';
import 'package:projectflutter/model/productmodel.dart';
import 'package:projectflutter/widgets/cate_card.dart';
import 'package:projectflutter/widgets/list_card.dart';
class myscreen extends StatelessWidget {
  const myscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 30,
                right: 20
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text("Hello Lana",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      
                      Text("You have Work today",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,

                      ),
                      ),
                        ],
                      ),
                      const  Spacer(),
                     Padding(
                       padding: const EdgeInsets.only(right: 15),
                       child: Column(
                        children: [
                       CircleAvatar(
                        radius: 25,
                        child: ClipOval(
                           child: Image.asset("assets/images/cat.jpg",
                           fit: BoxFit.cover,
                           width: 60,
                           height: 60,
                           )
                        ),
                       ),
                        ],
                       ),
                     ),
                    
                    ],
                  ),
                  const SizedBox(height: 30,),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: product.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 1, // Space between columns
                      mainAxisSpacing: 1, // Space between rows
                      childAspectRatio: 2.1/1.5,// Width is twice the height
                    ),      
                    itemBuilder: (context,index)=>cate_card(
                      product: product[index],
                    )
                    ),
                    const SizedBox(height: 20,),
                    const Text("Today Task's"),
                    ListView.builder(
                  shrinkWrap: true, 
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) =>list_card(
                    productcard: products[index],
                    )
                    ),
                   const  SizedBox(height: 10,),
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )
                      ) ,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Mytask()
                        ));
                      }, 
                      child: const Text("Create New Task",
                      style: TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                      ),
                      ),
                          
                      ),
                  )
                ],
              ),
            ),
        ),
        )
    );
  }
}
