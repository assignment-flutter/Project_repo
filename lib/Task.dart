import 'package:flutter/material.dart';
import 'package:projectflutter/end_screen.dart';
import 'package:projectflutter/widgets/bottum.dart';
import 'package:projectflutter/widgets/bottum_prior.dart';

class myedit extends StatefulWidget {
  const myedit({super.key});

  @override
  State<myedit> createState() => _myeditState();
}
class _myeditState extends State<myedit> {
  final item=['9:00Am','10:00Am','11:00Am'];
  final itemend=['5:00Pm','6:00Pm','7:00Pm'];
  String? selectedStartTime;
  String? selectedEndTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed:()=> Navigator.pop(context), icon:Icon(Icons.adaptive.arrow_back)),
        title: const Text("Create New Task",
        style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.w500,),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
             child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25,top: 30,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Task Name",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),),
            const SizedBox(height: 20,),
            const TextField(
              decoration: InputDecoration(
                hintText: "Call Ameer",
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 20,),
            const Text("Category",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
            ),
            const SizedBox(height: 10,),
            const bottum(),
            const SizedBox(height: 20,),
            const Text("Date & Time",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
            ),
            const SizedBox(height:10 ,),
             const TextField(
              decoration: InputDecoration(
                hintText: "12 Dec 2024",
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_month, color: Colors.blue,),

              ),
            ),
            const SizedBox(height: 20,),
            const Row(
              children: [
                Text("Start Time ",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            )),
            SizedBox(width: 100,),
               Text("End Time ",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            )),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedStartTime,
                    hint: const Text("Start Time"),
                    items: item.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedStartTime = newValue;
                      });
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                 Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedEndTime,
                    hint: const Text("End Time"),
                    items: itemend.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedEndTime = newValue;
                      });
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      
                    ),
                  ),
                 )
              ],
            ),
            const SizedBox(height: 20,),
            const Text("Priority",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),),
            const bottum_prior(),
            const SizedBox(height: 20,),
            const Text("Description",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),),
             const SizedBox(height: 10,),
             const TextField(
              decoration: InputDecoration(
                hintText: "Research djl klrj ladj ljojf fjljf xkflsf lkzfj ",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder()
              )
             ),
             SizedBox(height: 10,),
             Center(
               child: Container(
                width: 230,
                height: 50,
                 child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.blue[400],
                 shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)) 
                 )
                           ),
                           onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>myend())), 
                           child:const Text("Create Task") 
                           ),
               ),
             ),
          ],
        ),
      ),
    );
  }
}
