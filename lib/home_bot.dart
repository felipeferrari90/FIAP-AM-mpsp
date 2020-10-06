import 'package:am_mpsp/components/component_button.dart';
import 'package:flutter/material.dart';

class HomeBot extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
     return Scaffold(
         backgroundColor: Colors.grey[400],
         body: Container(
           padding: EdgeInsets.all(24.0),
           decoration: BoxDecoration(
             color: Color.fromRGBO(0, 0, 0, 0.5),
             image: DecorationImage(
               image: AssetImage('assets/images/home2-bg.jpg'),
               fit: BoxFit.cover,
               colorFilter: ColorFilter.mode(
                 Colors.grey.withOpacity(0.1), 
                 BlendMode.lighten
                 ),
               ),
           ),
           child: Center(child: Column(
              children: <Widget>[
                Container(
                  child: Expanded(child: Image.asset('assets/images/logo.png',scale: 0.01,),)),
                  buttonRounded(context, "falar com o assistente", "/screen_bot"),
                  buttonRounded(context, "importante", "/important", outlineButton: true ),
                  buttonRounded(context, "sobre o dispositivo", "/about"),
              ],
             ) 
          )
         )
     );
  }    
}