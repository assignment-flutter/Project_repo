// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:projectflutter/model/productmodel.dart';

class cate_card extends StatelessWidget {
  const cate_card({
    super.key, required this.product,
  });
 final Productmodel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,
       right: 16,
       bottom: 16
       ),
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        height: 50,
        decoration: BoxDecoration(
          color: product.Color,
          borderRadius: BorderRadius.circular(20)
          
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(product.Icon,
              color: Colors.white,
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(product.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: SizedBox(width: 20,),
                  ),
                  Text(product.Itemcount.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                  )
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
