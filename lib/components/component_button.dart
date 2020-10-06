import 'package:flutter/material.dart';

Widget buttonRounded(BuildContext context, String text, String route, {bool outlineButton = false} ){
  return Padding(
                  padding: EdgeInsets.all(8),
                  child:  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(
                        color: outlineButton ? Colors.red[900]: Colors.transparent , 
                        width: 2,
                      ),
                    ),
                    child: SizedBox(
                      width: 175,
                      child: Padding(
                        padding: EdgeInsets.all(16), 
                          child: Text(text,
                            textAlign: TextAlign.center,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis
                          ),
                        ),
                    ),
                    color: outlineButton ? Colors.white.withOpacity(0.4) : Colors.red[800],
                    textColor: outlineButton ? Colors.red[900]: Colors.white,
                    textTheme: ButtonTextTheme.primary,
                    onPressed: (){
                       Navigator.pushNamed(context,route);
                    }, 
             ), 
          );

}