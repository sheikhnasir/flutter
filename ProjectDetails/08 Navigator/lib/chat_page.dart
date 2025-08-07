import 'package:flutter/material.dart';
import 'package:chat_app/Widget/chat_bubble.dart';
import 'package:chat_app/Widget/chat_input.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi Sheikh!'),
        actions: [
          IconButton(
              onPressed: () {
                print('Icon pressed!');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
              return
                ChatBubble(
                    alignment:index % 2==0
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                    message: "Helo there . How are you doing today?");
            })),
              ChatInput(),
            //  children: [
                // TODO: Remove duplicated code
           //     ChatBubble(alignment:Alignment.centerLeft, message: "Helo there"),
            //    ChatBubble(alignment:Alignment.centerRight, message: "Welcome"),
               // getChatBubble(Alignment.centerLeft,"Helo there"),
               // getChatBubble(Alignment.centerRight,"Welcome Back"),
          //    ],

        ],
      ),
    );
  }
}