import 'package:flutter/material.dart';
import '../model/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context){
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  dummyData[i].name,
                  style:  new TextStyle(fontWeight: FontWeight.bold,),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData[i].time,
                      style:  new TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold,),
                    ),
//                    SizedBox(height: 10.0,),
                    CircleAvatar(
                      backgroundColor: Theme.of(context).accentColor,
                      radius: 10.0,
                      child:new Text(
                        dummyData[i].qtd,
                        style:  new TextStyle(color: Colors.white, fontSize: 10.0, fontWeight: FontWeight.bold,),
                      ),
                    )
                  ],
                )
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child:new Text(
                dummyData[i].message,
                style:  new TextStyle(fontWeight: FontWeight.normal, fontSize: 15.0,),
              ),
            ),
          )
        ],
      )
    );
  }
}
