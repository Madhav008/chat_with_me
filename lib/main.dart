import 'package:chat_with_me/screen/chat_screen.dart';
import 'package:chat_with_me/widgets/appbar.dart';
import 'package:chat_with_me/widgets/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChatScreen(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var i = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text('Messages',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          width: MediaQuery.of(context).size.width,
          child: Text(
            "You have $i new messages",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black38,
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 20.0),
        HomeScreen(),
      ],
    );
  }
}
