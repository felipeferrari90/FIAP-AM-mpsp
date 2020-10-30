import 'package:am_mpsp/screens/about_screen.dart';
import 'package:am_mpsp/screens/chatbot_screen.dart';
import 'package:am_mpsp/screens/important_screen.dart';
import 'package:flutter/material.dart';

import 'package:am_mpsp/screens/home_bot.dart';


void main() {
  runApp(MpspBot());
}

class MpspBot extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MPSP - Bot',
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.blue,   
        fontFamily: 'oswald',
      ),
      routes: {
        '/': (context) => HomeBot(), 
        '/screen_bot': (context) => ChatBotScreen(),
        '/important': (context) =>ImportantScreen(),
        '/about': (context) => AboutMeScreen(),          
      },
    );
  }
}



 