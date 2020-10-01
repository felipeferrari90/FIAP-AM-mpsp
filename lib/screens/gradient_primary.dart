import 'package:flutter/material.dart';

BoxDecoration gradientPrimary(){
    return new BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Color.fromRGBO(151, 3, 10, 1.0),Colors.black],
              )
          );
}