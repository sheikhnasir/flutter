import 'package:flutter/material.dart';
import 'package:chat_app/login_page.dart';
import 'package:chat_app/chat_page.dart';
import 'package:chat_app/demo/counter_stateful_demo.dart';
void main() {
  runApp(const ChatApp());
}


class ChatApp extends StatelessWidget{
  const ChatApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Chat App",
        theme: ThemeData(primarySwatch: Colors.yellow),
        //todo create chatpage()
        home: LoginPage(), // CounterStateful(buttonColor: Colors.deepOrange),
        routes: {'/chat':(context)=>ChatPage()},
    );
   // body: Text('Login Area');

  }



}