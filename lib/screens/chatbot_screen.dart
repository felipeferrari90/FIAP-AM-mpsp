
import 'package:am_mpsp/components/component_message_box.dart';
import 'package:am_mpsp/screens/gradient_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatBotScreen extends StatefulWidget{

   @override
   _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen>{

  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(
         title: Text( " Conversa com o ChatBot"),
         centerTitle: true,
         backgroundColor: Colors.red[700],
       ),
       backgroundColor: Colors.grey[400],
       floatingActionButton: FloatingActionButton(
         onPressed: null,
         backgroundColor: Colors.red[700],
         child: Icon(
            Icons.label_important,
         ),
       ),
       body: Column(   
            mainAxisAlignment:  MainAxisAlignment.end,    
            children: <Widget>[
               Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        messageBox("Oi tudo bem como posso ajuda-lo?", Colors.blue[800], Alignment.centerLeft),
                        messageBox("eu gostaria de saber sobre o mpsp", Colors.black, Alignment.centerRight),
                        messageBox("para mais informacoes acesse o site http://www.mpsp.mp.br/portal/page/portal/home/home_interna", Colors.blue[800], Alignment.centerRight, taplink: "http://www.mpsp.mp.br/portal/page/portal/home/home_interna" ),
                        messageBox("valeu obrigado", Colors.black, Alignment.centerRight),
                        messageBox("de nada :)", Colors.blue[800], Alignment.centerLeft),
                      ]                
                    ),
                  ),           
               ),
               Container(
                 decoration: gradientPrimary(),
                 padding: EdgeInsets.all(20.0),
                 child: Form(
                  key: formKey,
                     child: TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration:  InputDecoration(
                              hintText: 'insira a opcao para o bot',
                              contentPadding: EdgeInsets.all(20.0), 
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                              )
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'por favor digite algo';
                              }
                                return null;
                            },
                            keyboardType: TextInputType.numberWithOptions(),
                            onSaved: (value){      
                                //vamos inserir algo aqui
                            }
                     ), 
                   ),
              ),          
            ],
       ),
     );
  }
}