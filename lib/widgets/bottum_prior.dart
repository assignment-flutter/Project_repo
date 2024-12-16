import 'package:flutter/material.dart';

class bottum_prior extends StatelessWidget {
  const bottum_prior
  ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         ElevatedButton(
          style: ElevatedButton.styleFrom(
             backgroundColor: Colors.blue[400],
             shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)) 
             )
          ),
          onPressed: (){}, 
          child:const Text("  Low  ") 
          ),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
             backgroundColor: Colors.blue[300],
             shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)) 
             )
          ),
          onPressed: (){}, 
          child:const Text("Medium") 
          ),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
             backgroundColor: Colors.blue[200],
             shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)) 
             )
          ),
          onPressed: (){}, 
          child:const Text("  high  ") 
          ),
      ],
    );
  }
}