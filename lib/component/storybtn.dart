import 'package:flutter/material.dart';


Widget storyButton(String imgUr1,String userName) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Column(
    children : [
      CircleAvatar(
        backgroundImage: NetworkImage(imgUr1),
        radius: 26.0,
  ),
        SizedBox(height: 5.0,
        ),
         Text(
           userName,
           style: TextStyle(color: Colors.white),
  ),
    ],
    ),
  );
}