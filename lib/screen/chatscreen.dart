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
        title: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 29.0,
              backgroundImage: AssetImage(widget.user.imageUrl),
            ),
            SizedBox(
              width: 5.0,
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
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: GestureDetector(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                 
                ),
               child: ListView.builder(
                  reverse: true,
                  padding: EdgeInsets.only(top: 15.0),
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Messages message = messages[index];
                    final bool isMe = message.sender.id == currentUser.id;
                    return _buildMessage(message, isMe);
                  },
                ),
              ),
            ),
            _buildMessageComposer(),

          ]
        )
      ),
    );
  }
}
