import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChatSample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFFE1E1E2), 
              ),
              child: Text(
                "Hi, How's the project going?",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 80),
          child: ClipPath(
            clipper: LowerNipMessageClipper(MessageType.send),
            child: Container(
              padding: 
                  EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
              decoration: BoxDecoration(
                color: Color(0xFF113953), 
                ),
              child: Text(
                "Can you pog off? I'm stressed as F on this shttty project of yours",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}