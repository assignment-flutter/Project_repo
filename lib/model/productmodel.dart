import 'package:flutter/material.dart';

class Productmodel {
  final String title;
  final Icon;
  final int Itemcount;
  final Color;
  Productmodel({
    required this.title,
    required this.Icon,
    required this.Itemcount,
    required this.Color,

  });
}
List<Productmodel> product=[
  Productmodel(
    title: "Projects",
   Icon:  Icons.book, 
   Itemcount: 5,
    Color: Colors.blue[200]
    ),
   Productmodel(
        title: "Work",
        Icon:  Icons.car_crash, 
        Itemcount: 3,
        Color: Colors.green[200]
    ),
  Productmodel(
        title: "DailyTask",
        Icon:  Icons.calendar_today, 
        Itemcount: 2,
        Color: Colors.purple[200]
    ),
  Productmodel(
        title: "Groceries",
        Icon:  Icons.shopping_cart, 
        Itemcount: 7,
        Color: Colors.orange[200]
    ),
];




