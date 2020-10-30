import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Align messageBox(String mensagem, Color color, Alignment alignment,{ String taplink }){
  return Align(
     alignment: alignment,
     child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(243,243,243,1),
        borderRadius: BorderRadius.circular(15.0),    
      ),
      child: GestureDetector(
         onTap: (){
           _launchChatURL(taplink);
           },
        child: Text( mensagem,
        style: TextStyle( 
          color: color,  
          fontWeight: FontWeight.bold,     
          fontFamily: 'proxima-nova',
          ),
        ),     
      ) 
    )
  );
}


 _launchChatURL(String linkUrl) async {
          var url = linkUrl;
          if (await canLaunch(url)) {
              await launch(url);
          } else {
              throw 'nao foi possivel se conectar ao $url';
          }
} 
