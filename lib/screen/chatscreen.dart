import 'package:chat_with_me/model/chat_model.dart';
import 'package:flutter/material.dart';

class ChatScrenn extends StatefulWidget {
  final User user;

  ChatScrenn({this.user});

  @override
  _ChatScrennState createState() => _ChatScrennState();
}

class _ChatScrennState extends State<ChatScrenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[

          CircleAvatar(
            radius: 35.0,
            backgroundImage: AssetImage(widget.user.imageUrl),
          ),
          Text(
          widget.user.name,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        ],
      
      ),
    );
  }
}
