
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/chat_widget.dart';
import '../model/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context){
    return InkWell(

      child: new ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => InkWell(
          onTap: ()=>Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context)=>ChatScreenn(
                nome: dummyData[i].nome,
                messagem: dummyData[i].messagem,
                tempo: dummyData[i].tempo,
                avatarUrl: dummyData[i].avatarUrl,))
          ),
          child: Column(
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
                      dummyData[i].nome,
                      style:  new TextStyle(fontWeight: FontWeight.bold,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                          dummyData[i].tempo,
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
                    dummyData[i].messagem,
                    style:  new TextStyle(fontWeight: FontWeight.normal, fontSize: 15.0,),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}


