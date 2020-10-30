
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
         iconTheme: IconThemeData(
           color: Color.fromRGBO(145,25,35,1),
           size: 30, 
         ),
         elevation: 0,
         backgroundColor: Color.fromRGBO(231,231,231,1),
         toolbarOpacity: 1,
       ),
       backgroundColor:  Color.fromRGBO(67,0,1,1),
       floatingActionButton: FloatingActionButton(
         onPressed: null,
         backgroundColor: Color.fromRGBO(240,63,79, 1),
         child: Icon(
            Icons.send,
         ),
       ),
       body: Column(   
            mainAxisAlignment:  MainAxisAlignment.end,    
            children: <Widget>[
               Expanded(
                    child:Container (
                      decoration: BoxDecoration(
                      color: Color.fromRGBO(231,231,231,1),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                    )
                  ),  
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
                )         
               ),
               Container(
                 decoration: BoxDecoration(
                   color: Color.fromRGBO(145,25,35,1),
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(25),
                     topRight: Radius.circular(25),
                   )
                 ),
                 padding: EdgeInsets.all(24.0),
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
                                color: Color.fromRGBO(67, 0, 1 ,1),
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