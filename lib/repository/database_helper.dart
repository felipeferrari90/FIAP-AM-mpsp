import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  // Instancia do SQFLite Database
  static Database _database;

  // Instancia da classe Helper
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  // Fábrica de construtor
  factory DatabaseHelper() {
    return _instance;
  }

  // Construtor nomeado 
  DatabaseHelper._internal();

  

  // Abre conexão com o banco
  Future<Database> get connection async {
    if (_database == null) {
      _database = await _createDatabase();
    }
    return _database;
  }

  Future<Database> _createDatabase() async {
    String databasesPath = await getDatabasesPath();
    String dbPath = join(databasesPath, 'mpsp.db');

    var database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: _createTables,
    );

    return database;
  }

  void _createTables(Database database, int version) async {
    // Criando a tabela de Cursos
    await database.execute(
      '''
      CREATE TABLE importantModel (
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        titulo TEXT,
        mensagem TEXT,
        url TEXT
      );
      ''',
    );
    await database
        .execute("INSERT INTO importantModel VALUES (default, 'Pagina Principal' , 'esse texto tem como objetivo ser um teste para assim que voce clicar nele vc ser redirecionado a pagina principal do site do MPSP', 'http://www.mpsp.mp.br/portal/page/portal/home/home_interna')");
    await database
        .execute("INSERT INTO importantModel VALUES (default, 'Pagina de acessibilidade' , 'esse texto tem como objetivo ser um teste para assim que voce clicar nele vc ser redirecionado a pagina de acessibilidade do site do MPSP', 'http://www.mpsp.mp.br/portal/page/portal/home/acessibilidade')");
    await database
        .execute("INSERT INTO importantModel VALUES (default, 'Canal do Youtube' , 'esse texto tem como objetivo ser um teste para assim que voce clicar nele vc ser redirecionado a pagina de acessibilidade do site do MPSP', 'https://www.youtube.com/user/MPSPoficial')");
    }
}