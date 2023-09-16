import 'dart:io';
import 'package:dio/dio.dart';

import 'package:restful/domain/services/http_service.dart';

class HttpServiceImpl implements IHttpService {
  final String host;
  HttpServiceImpl(this.host);
  var client = HttpClient();

  @override
  Future get(String url) async {
    try {
      final response = await Dio().get('https://dog.ceo$url');
      return response;
    }catch(e){
      // ignore: avoid_print
      print(e);
    }

    // Este metodo se encarga de hacer una llamada GET al host recibido en el constructor. Ejemplo: 'https://dog.ceo'.
    // Recibe un url que seria el endpoint al que se quiere acceder. Ejemplo: '/api/breeds/image/random'
    // Utiliza el cliente http que gustes (http, dio, etc)

    // Este método é responsável por fazer uma chamada GET ao host recebido no construtor. Exemplo: 'https://dog.ceo'.
    // Recebe um url que seria o endpoint ao qual você deseja acessar. Exemplo: '/api/breeds/image/random'
    // Usa o cliente http que você gosta (http, dio, etc)
    throw UnimplementedError();
  }
}
