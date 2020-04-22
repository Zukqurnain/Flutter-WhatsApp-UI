import 'package:flutter/material.dart';
import 'package:whatsapp/Models/ChatListItem.dart';
import 'package:whatsapp/Models/ChatMessage.dart';

class ChatScreen extends StatelessWidget {
  final ChatListItem person;
  ChatScreen({this.person});

  final roundedContainer = ClipRRect(
  // borderRadius: BorderRadius.circular(20.0),
  child: Container(
    // color: Colors.white,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Colors.white),
    child: Row(
      children: <Widget>[
        SizedBox(width: 8.0),
        Icon(Icons.insert_emoticon,
            size: 30.0, color: Colors.grey),
        SizedBox(width: 8.0),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Type a message',
              border: InputBorder.none,
            ),
          ),
        ),
        Icon(Icons.attach_file,
            size: 20.0, color: Colors.grey),
        SizedBox(width: 8.0),
        Icon(Icons.camera_alt,
            size: 30.0, color: Colors.grey),
        SizedBox(width: 8.0),
        FloatingActionButton(
          onPressed: (){},
          mini: true,
          backgroundColor: Color(0xFF075E54),
          child: Icon(Icons.send),
        )
      ],
    ),
  ),
);

  final List<ChatMessage> messages = [
    ChatMessage(
        date: "9:10 am", isSentByMe: true, message: "Bike Customer CFP Franc"),
    ChatMessage(
        date: "9:10 am",
        isSentByMe: true,
        message: "instruction set grey applications"),
    ChatMessage(date: "9:10 am", isSentByMe: false, message: "Monitored"),
    ChatMessage(date: "9:10 am", isSentByMe: true, message: "local"),
    ChatMessage(date: "9:10 am", isSentByMe: false, message: "Functionality"),
    ChatMessage(
        date: "9:10 am", isSentByMe: true, message: "Bike Customer CFP Franc"),
    ChatMessage(date: "9:10 am", isSentByMe: true, message: "local"),
    ChatMessage(date: "9:10 am", isSentByMe: false, message: "Functionality"),
    ChatMessage(
        date: "9:10 am",
        isSentByMe: true,
        message: "instruction set grey applications"),
    ChatMessage(date: "9:10 am", isSentByMe: false, message: "Monitored"),
  ];

  Widget renderChatMessages(ChatMessage message){
    return Column(
      children: <Widget>[
        Align(
          alignment: message.isSentByMe? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal : 10,
              vertical: 5
            ),
            margin: EdgeInsets.symmetric(
              horizontal : 20,
              vertical: 10
            ),
            decoration: BoxDecoration(
              color: message.isSentByMe? Color(0xFFDCF8C6) : Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0xFF22000000),
                  offset: Offset(1 ,2)
                  ),
              ],
            ),
            child: Text(
              message.message,
              style: TextStyle(fontSize: 16 , color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
  Widget renderTextBox(){
    return Container(
      padding: EdgeInsets.only(
        bottom:10,
        right: 10,
        left:10
      ),
      child: Row(children: <Widget>[
        Flexible(
          child: Container(
            decoration: 
            BoxDecoration(borderRadius: BorderRadius.circular(25),
            color: Colors.white
            ),
            // color: Color(0xFF075E54),
            child: Padding(
                child: TextField(
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration.collapsed(
                  hintText: "Type Message Here" ,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  )
                ),
              ), padding: EdgeInsets.only(left: 10.0),
            ),
          ),
        ),
        IconButton(icon: Icon(Icons.attach_file), onPressed: (){},),
        FloatingActionButton(
          onPressed: (){},
          mini: true,
          backgroundColor: Color(0xFF075E54),
          child: Icon(Icons.send),
        )

      ],),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECE5DD),
      appBar: AppBar(
        title: Text(person.personName),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.call),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (ctx , i) => renderChatMessages(messages[i])),
          ),
            Divider(),
            Container(
              child: renderTextBox(),
            ),
        ],
      ),
    );
  }
}


