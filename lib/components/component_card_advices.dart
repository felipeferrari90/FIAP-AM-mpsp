import 'package:am_mpsp/models/important_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




Widget cardAdvice(ImportantModel important){
          return Card(
              elevation: 11.0,
                child: GestureDetector(
                  onTap: () {
                     _launchURL(important.url);
                  } ,
                  child: Row(    
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),                                 
                        child: Center(
                          child: Container(
                            color: Colors.red,
                            width: 100,
                            height: 100,
                          )
                        )
                      ),
                      Expanded(
                          child: Container(
                            padding : EdgeInsets.all(4.0),                      
                            child: Column(                         
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text( important.titulo.toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,                        
                                    ),                              
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(4.0),                            
                                  child: Expanded(                           
                                      child: Text (important.mensagem,
                                          style: TextStyle(fontSize: 12),
                                      ),                               
                                  ),
                                ),
                              ], 
                            ),
                        ),
                      )                  
                    ],
                 ), 
               ) 
          );
    
              
             

             
}

 _launchURL(String linkUrl) async {
          var url = linkUrl;
          if (await canLaunch(url)) {
              await launch(url);
          } else {
              throw 'nao foi possivel entrar em $url';
          }
} 

