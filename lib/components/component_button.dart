import 'package:flutter/material.dart';

Widget buttonRounded(BuildContext context, String text, String route){
  return Padding(
                  padding: EdgeInsets.all(8),
                  child:  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.red[800], width: 3),
                    ),
                    child: SizedBox(
                      width: 200,
                      child: Padding(
                        padding: EdgeInsets.all(25), 
                          child: Text(text,
                            textAlign: TextAlign.center,
                          ),
                        ),
                    ),
                  textColor: Colors.black,
                  textTheme: ButtonTextTheme.primary,
                  onPressed: (){
                     Navigator.pushNamed(context,route);
                  }, 
             ), 
          );

}