
import 'package:am_mpsp/components/component_card_advices.dart';
import 'package:am_mpsp/models/important_model.dart';
import 'package:am_mpsp/screens/gradient_primary.dart';
import 'package:am_mpsp/service/important_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ImportantScreen extends StatefulWidget {

  @override
  _ImportantScreenState createState() {
     return _ImportantScreenState();
  }
}


class _ImportantScreenState extends State<ImportantScreen>{

  final scaffoldKey = GlobalKey<ScaffoldState>();

  ImportantService importantService = ImportantService();

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context){
     return Scaffold(
       key: scaffoldKey,
       appBar: AppBar(
         iconTheme: IconThemeData(
           color: Color.fromRGBO(145,25,35,1),
           size: 30, 
         ),
         elevation: 0,
         backgroundColor: Color.fromRGBO(93,3,12,1) ,
       ),
       body: Container(
          color:  Color.fromRGBO(93,3,12,1),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: FutureBuilder<List>( 
              future: importantService.findAll(),
              builder: (context, snapshot) {
                if(snapshot.hasError){
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Erro ao carregar a lista de importantes. \n Detalhes: '+ snapshot.error.toString()),
                      ),
                  );
                }
                else if (snapshot.connectionState == ConnectionState.done){    
                    return buildListViewExpanded(snapshot.data);                        
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      backgroundColor : Colors.white,
                    ),
                  );
                }

                
              }
            )
          
          /*
          Column(
            children: <Widget>[
              cardAdvice("seção do site", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas", url: 'http://www.mpsp.mp.br/portal/page/portal/Promotorias_de_Justica/emails_promotorias'),
              cardAdvice("seção do site 2", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas", url: 'https://app.powerbi.com/view?r=eyJrIjoiZTNmMWU5MjctM2NiMy00ZTdhLWEyYjgtMzIxOGE1ZDcyYTJiIiwidCI6IjJkYmQ4NDk5LTUwOGQtNGI3Ni1hMzFkLWNhMzljYjNkOGYxZCJ9&embedImagePlaceholder=true&pageName=ReportSection97cce665b6b309543b37'),
              cardAdvice("seção do site 3", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas",),
              cardAdvice("seção do site 4", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas",),
              cardAdvice("seção do site 5", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas",),
              cardAdvice("seção do site 6", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas",),
              cardAdvice("seção do site 7", "esse artigo ira te auxiliar a te levar a tal secao do site que tanto vc quer ou tem duvidas",),
            ],
          ),*/
        ),
       )
     );
  }


  buildListViewExpanded(List<ImportantModel> importants){
      return ListView.builder(  
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: importants.length,
        itemBuilder: (BuildContext context, int index){
          return cardAdvice(importants[index]);
        }    
      ); 
  }


}