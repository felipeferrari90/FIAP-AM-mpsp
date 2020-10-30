import 'package:flutter/material.dart';

Widget buttonRounded(BuildContext context, String text, String route, {bool secundaryButton = false} ){
  return Padding(
                  padding: EdgeInsets.fromLTRB(12.0 , 24.0, 12.0, 2.0),
                  child:  RaisedButton(
                    
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: SizedBox(
                      width: 250,
                      child: Padding(
                        padding: EdgeInsets.all(16), 
                          child: Text(text,
                            textAlign: TextAlign.center,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis
                          ),
                        ),
                    ),
                    color: secundaryButton ?  Color.fromRGBO(149,27,38,1) : Color.fromRGBO(67, 0, 1, 1),
                    textColor: secundaryButton ? Color.fromRGBO(67, 0, 1, 1) : Color.fromRGBO(149,27,38,1), 
                    textTheme: ButtonTextTheme.primary,
                    onPressed: (){
                       Navigator.pushNamed(context,route);
                    }, 
             ), 
          );

}
