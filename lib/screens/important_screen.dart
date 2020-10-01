
import 'package:am_mpsp/components/component_card_advices.dart';
import 'package:am_mpsp/screens/gradient_primary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImportantScreen extends StatelessWidget{

  Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(
         title: Text( "Importante"),
         centerTitle: true,
         backgroundColor: Colors.red,
       ),
       body: Container(
          decoration: gradientPrimary(),
          child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              cardAdvice("seção do site", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas", url: 'http://www.mpsp.mp.br/portal/page/portal/Promotorias_de_Justica/emails_promotorias'),
              cardAdvice("seção do site 2", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas", url: 'https://app.powerbi.com/view?r=eyJrIjoiZTNmMWU5MjctM2NiMy00ZTdhLWEyYjgtMzIxOGE1ZDcyYTJiIiwidCI6IjJkYmQ4NDk5LTUwOGQtNGI3Ni1hMzFkLWNhMzljYjNkOGYxZCJ9&embedImagePlaceholder=true&pageName=ReportSection97cce665b6b309543b37'),
              cardAdvice("seção do site 3", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas",),
              cardAdvice("seção do site 4", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas",),
              cardAdvice("seção do site 5", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas",),
              cardAdvice("seção do site 6", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas",),
              cardAdvice("seção do site 7", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas",),
            ],
          ),
        ),
       )
     );
  }
}