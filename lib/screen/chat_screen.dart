import 'package:chat_with_me/widgets/chatlistWidget.dart';
import 'package:chat_with_me/widgets/imput.dart';

import '../widgets/chatappbar.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ChatAppBar(),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
             ChatListWidget(),//Chat list
             InputWidget(), // The input widget
          ],
        ),
      ),
    );
  }
}


