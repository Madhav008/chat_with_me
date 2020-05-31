import 'package:flutter/material.dart';
import '../chatappbar.dart';
import 'chatlistWidget.dart';
import 'imput.dart';

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


