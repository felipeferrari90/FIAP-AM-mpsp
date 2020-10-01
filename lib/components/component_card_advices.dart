import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




Widget cardAdvice(String titulo, String descricao, {String url}){
     return Card(  
                elevation: 11.0,
                child: GestureDetector(
                 onTap: () {
                     _launchURL(url);
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
                                  child: Text(titulo.toUpperCase(),
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
                                      child: Text(descricao,
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

