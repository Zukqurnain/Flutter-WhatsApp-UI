import 'package:flutter/material.dart';
import 'package:whatsapp/Pages/CameraTab.dart';
import 'package:whatsapp/Pages/ChatTab.dart';

import 'CallsTab.dart';
import 'StatusTab.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
         length: 4,
         initialIndex: 1,
        child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Color(0xFF075E54),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
            Tab(child: Icon(Icons.camera_alt),),
            Tab(child: Text('CHATS'),),
            Tab(child: Text('STATUS'),),
            Tab(child: Text('CALLS'),)
          ],),
          title: Text('WhatsApp',
          style: TextStyle(fontWeight: FontWeight.bold),),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: ()=> {},),
            IconButton(icon: Icon(Icons.more_vert), onPressed: ()=> {},)
          ],
        ),
        body: TabBarView(children: <Widget>[
          CameraTab(),
          ChatTab(),
          StatusTab(),
          CallsTab()

        ],),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.call),
          onPressed: (){},
          backgroundColor: Color(0xFF075E54),
        ),
      ),
    );
  }
}