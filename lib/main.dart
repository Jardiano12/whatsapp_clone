import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/ui/camera_screen.dart';
import 'package:whatsapp_clone/ui/chamadas_screen.dart';
import 'package:whatsapp_clone/ui/chat_screen.dart';
import 'package:whatsapp_clone/ui/status_screen.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new WhatsAppUiClone(),
        title: 'WhatsApp',
        theme: new ThemeData(
          primaryColor: new Color(0xff075E54),
          accentColor: new Color(0xff25D366),
        ),
      ));
}

class WhatsAppUiClone extends StatefulWidget {
  _WhatsAppUiClone createState() => new _WhatsAppUiClone();
}

class _WhatsAppUiClone extends State<WhatsAppUiClone>  with SingleTickerProviderStateMixin {
  TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = new TabController(
      vsync: this,
      length: 4,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Theme.of(context).primaryColor,
    ));
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: new Text('WhatsApp'),
        elevation: 0.7,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white,),),
          IconButton(icon: Icon(Icons.more_vert, color: Colors.white,),)
        ],
        bottom: new TabBar(
          controller: _tabcontroller,
          indicatorColor: Colors.white,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: 'CONVERSAS',),
            new Tab(text: 'STATUS',),
            new Tab(text: 'CHAMADAS',)
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabcontroller,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new ChamadasScreen()

        ],
      ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message, color: Colors.white,),
          onPressed: ()=>print("open buttão Flutuante"),
          backgroundColor: Theme.of(context).accentColor,
          foregroundColor: Colors.black,
        ),
    );
  }
}