import 'package:flutter/material.dart';


class ActiveChats extends StatelessWidget{
  List<String> imagePaths = [
    "images/earthman.jpg",
    "images/gamer.jpg",
    "images/hacker.jpg",
    "images/man.jpg",
    "images/greenman.jpg",
    "images/meow.png",
    "images/woman.png",
  ];

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(top: 25, left: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child: Row(
        children: [
          
          for (int i= 0; i < imagePaths.length; i++)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12), 
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 3),
                    ),
                ],),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.asset(
                    imagePaths[i],
                  ),
                ),
              ),
            ),
        ],
      ),)
    );
  }
}