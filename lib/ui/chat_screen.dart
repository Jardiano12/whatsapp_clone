import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context){
    return new Container(
        child: new Center(
          child: new Text('Chat', style: new TextStyle(fontSize: 20.0),),
        )
    );
  }
}