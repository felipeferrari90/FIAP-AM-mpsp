import 'package:flutter/material.dart';

Align messageBox(String mensagem, Color color, Alignment alignment){
  return Align(
     alignment: alignment,
     child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.red[700],
          width: 3
        ),
      ),
      child: Text(mensagem,
        style: TextStyle( 
          color: color, 
          fontWeight: FontWeight.bold,     
        ),
      ),
    )
  );
}

