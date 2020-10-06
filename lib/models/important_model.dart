import 'dart:convert';

class ImportantModel{
    int id;
    String titulo;
    String mensagem;
    String url;
 
    ImportantModel({
        this.id,
        this.titulo,
        this.mensagem,
        this.url,
    });

    factory ImportantModel.fromJson(String str) => ImportantModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ImportantModel.fromMap(Map<String, dynamic> json) => ImportantModel(
        id: (json["id"] is int) ?  json["id"] : int.parse(json["id"]),
        titulo: json["titulo"],
        mensagem: json["mensagem"],
        url: json["url"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "titulo": titulo,
        "mensagem": mensagem,
        "url": url
    };

}