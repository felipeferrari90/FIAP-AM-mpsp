import 'dart:math';

import 'package:am_mpsp/components/component_button.dart';
import 'package:flutter/material.dart';

class HomeBot extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
     return Scaffold( 
         backgroundColor: Color.fromRGBO(93, 3, 12, 1),
         body: Container(               
           child: Flex(
                direction: Axis.vertical,
                children: <Widget>[                    
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only( top: 48, right: 0, left: 0, bottom: 28),
                        child: Image.asset('assets/images/logot.png', scale: 1.5,),
                      )
                    ),
                    buttonRounded(context, "falar com o assistente", "/screen_bot"),
                    buttonRounded(context, "importante", "/important", secundaryButton: true),
                    Expanded( flex:1, child: Divider() ),
                    Container(
                      child: Align(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context,"/about");
                          } ,
                          child: Column(                  
                            children: [
                              Icon(
                                Icons.info_outline,
                                size: 48,
                                color: Color.fromRGBO(149,27,38, 1),
                              ),
                              Text("sobre o dispositivo",
                                style: TextStyle(
                                  color: Color.fromRGBO(149,27,38, 1)
                                ),
                              ) ,
                              Text("\u00a9 2020 - by Nilton 2.0",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 8,
                                ),
                              )
                            ],
                          )  
                                    
                        )
                      )  
                    )
                 ],
             )          
         )
     );
  }    
}