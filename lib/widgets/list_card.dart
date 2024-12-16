// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:projectflutter/model/List_tale.dart';

class list_card extends StatelessWidget {
  const list_card({
    super.key, required this.productcard, 
  });
  final Productcard productcard;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              //offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          leading: const Icon(
            Icons.radio_button_unchecked,
            color: Colors.grey,
          ),
          
          title: Text(
            productcard.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            productcard.subtitle,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit, color: Colors.grey),
                onPressed: () {
                  
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
