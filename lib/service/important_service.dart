import 'package:am_mpsp/models/important_model.dart';
import 'package:am_mpsp/service/service_config.dart';
import 'package:dio/dio.dart';

class ImportantService {

 //static final String _endpoint = "http://192.168.0.14:8081/mpsp/important";
 static final String _endpoint = "https://5f7b783b00bd740016909975.mockapi.io/api/importants";

 final ServiceConfig service = new ServiceConfig(_endpoint);

 Future<List<ImportantModel>> findAll() async {

     List<ImportantModel> lista = new List<ImportantModel>();

 try {
    Response response = await service.create().get(_endpoint);
    if (response.statusCode == 200) {
        response.data.forEach(
          (value) {
            print(value);
            lista.add(ImportantModel.fromMap(value),);
          },
        );
      }
    } catch (error) {
          print("Service Error: $error ");
      throw error;
    }

  return lista;
  
  }
}  
