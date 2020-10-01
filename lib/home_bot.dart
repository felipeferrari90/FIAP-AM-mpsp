import 'package:am_mpsp/components/component_button.dart';
import 'package:flutter/material.dart';

class HomeBot extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
     return Scaffold(
         backgroundColor: Colors.grey[400],
         body: Container(
           padding: EdgeInsets.all(16.0),
           child: Center(child: Column(
              children: <Widget>[
                Container(
                  child: Expanded(child: Image.asset('assets/images/logo.jpeg'),)),
                  buttonRounded(context, "falar com o assistente", "/screen_bot"),
                  buttonRounded(context, "importante", "/important"),
                  buttonRounded(context, "sobre o dispositivo", "/about"),
                
              ],
             ) 
          )
         )
     );
  }    
}