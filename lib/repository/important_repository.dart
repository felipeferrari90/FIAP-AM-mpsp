import 'package:am_mpsp/models/important_model.dart';
import 'package:am_mpsp/repository/database_helper.dart';

class ImportantRepository {

  // Instancia do Database Helper
  DatabaseHelper _databaseHelper;

  // Construtor
  ImportantRepository() {
    _databaseHelper = new DatabaseHelper();
  }

  Future<List<ImportantModel>> findAll() async {

    var connection = await _databaseHelper.connection;
    var result = await connection.query(
      "ImportantModel",
      columns: [
        "id",
        "mensagem",
        "remetente",
      ],
    );


    // Converte a lista de Maps para Lista de Cursos
    List<ImportantModel> listaImportants = new List<ImportantModel>();

    for (Map i in result) {
       listaImportants.add(ImportantModel.fromMap(i));
    }
     listaImportants =  listaImportants.reversed.toList();

    return  listaImportants;
  }

  Future<int> create(ImportantModel importantModel) async {
    var connection = await _databaseHelper.connection;
    var result = await connection.insert(
      "ImportantModel",
      importantModel.toMap(),
    );
    return result;
  }


}