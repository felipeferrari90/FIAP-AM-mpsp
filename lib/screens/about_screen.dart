

import 'package:am_mpsp/screens/gradient_primary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget{

  String _titulo = "MPSP APP";
  String _descricao = "o app do MPSP tem como objetivo te auxiliar a navegar pelo site principal, te ajudando a encontrar o tópico que deseja ou resolver algum problema com mais facilidade através do nosso assistente ou uma lista de tópicos que nosso site mais atende ";

  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
         title: Text( "Sobre mim"),
         centerTitle: true,
         backgroundColor: Colors.red,
       ),
       body: Container(
         decoration: gradientPrimary(),
         padding: EdgeInsets.all(20),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Image.asset("assets/images/logo-name.png"),
             Text(_titulo, 
                   style: TextStyle( color: Colors.white, ),
                   textAlign : TextAlign.right),    
             Text(_descricao, style:TextStyle( color: Colors.white)),
          ],
         )
       ),
    );
  }
  
}