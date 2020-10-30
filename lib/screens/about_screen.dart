

import 'package:am_mpsp/screens/gradient_primary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget{

  String _titulo = "MPSP App";
  String _descricao = "o app do MPSP tem como objetivo te auxiliar a navegar pelo site principal, te ajudando a encontrar o tópico que deseja ou resolver algum problema com mais facilidade através do nosso assistente ou uma lista de tópicos que nosso site mais atende ";

  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
         backgroundColor:  Color.fromRGBO(60, 0, 0, 1),
         iconTheme: IconThemeData(
           color: Color.fromRGBO(145,25,35,1),
           size: 30, 
         ),
         elevation: 0,
       ),
       body: Container(
         color: Color.fromRGBO(60, 0, 0, 1),
         padding: EdgeInsets.all(20),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Image.asset("assets/images/logo.jpg", scale: 0.1),
             Text(_titulo, 
                   style: TextStyle( 
                     color: Color.fromRGBO(243,243,243, 1),
                     fontSize: 30,
                   ),
                   textAlign : TextAlign.right),    
             Text(_descricao, style:TextStyle( color: Color.fromRGBO(145,25,35,1), fontSize: 15)),
             Text("programadores",
                 style: TextStyle( 
                     color: Colors.white,
                     fontSize: 30,
                   ),
             ),
             Text("Felipe Ferreira \nAndré Nagamine \nMatheus Vitor",
                 style: TextStyle( 
                     color: Color.fromRGBO(145,25,35,1),
                     fontSize: 15,
                   ),
             )
          ],
         )
       ),
    );
  }
  
}