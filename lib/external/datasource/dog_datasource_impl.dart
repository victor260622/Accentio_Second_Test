
import 'package:restful/infra/datasources/dog_datasource.dart';

import '../../domain/services/http_service.dart';
import '../../infra/services/http_service_impl.dart';

class DogDatasourceImpl implements IDogDatasource {
  // Esta clase es la que se encarga de hacer la llamada al api
  // Esta classe é a responsável por fazer a chamada à api
  final IHttpService _http = HttpServiceImpl('https://dog.ceo');

  @override
  Future<String> fetchDog() async {
    try {
      var cepResult = {};
      final response = await _http.get('/api/breeds/image/random');
      cepResult = response.data;
      return cepResult['message'];

    }catch(e){
      throw UnimplementedError('Error en $e');
    }
    // endpoint: '/api/breeds/image/random'
    // Utiliza el metodo get de la clase HttpServiceImpl
  }
}
