import 'package:chat_with_me/model/chat_model.dart';
import 'package:flutter/material.dart';

class ChatScreen1 extends StatelessWidget {

final User user;

  ChatScreen1({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
      title: Text(
        user.name
        ),
      ),
    );
  }
}