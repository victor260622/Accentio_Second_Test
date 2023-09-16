import 'package:flutter/material.dart';

import 'package:restful/external/datasource/dog_datasource_impl.dart';
import 'package:restful/infra/repositories/dog_repository_impl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _dogUrl;

  // Repositorio que se encarga de consumir el datasource
  // Repositório responsável por consumir o datasource
  var dogRepository = DogRepositoryImpl(DogDatasourceImpl());

  @override
  void initState() {
    // Cargamos un perro al iniciar la app
    // Carregamos um cachorro ao iniciar o aplicativo
    loadDog();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dogs!'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Center(
                  child: _dogUrl == null
                      ? const Center(
                          child: Text("Load a new dog!"),
                        )
                      : Image.network(_dogUrl!))),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    loadDog();
                  },
                  child: const Text('Load New Dog')))
        ],
      ),
    );
  }

  Future<void> loadDog() async {
    final dog = DogDatasourceImpl();
    try {  
      var url =  await dog.fetchDog();
      setState(() {
        _dogUrl = url;   
      });
    }catch(e){

      throw UnimplementedError('Error en $e');
    }
    // Aqui es donde se debe llamar al metodo fetchDog del repositorio, cargar la imagen y actualizar el estado con el nuevo url
    // Aqui é onde o método fetchDog do repositório deve ser chamado, a imagem carregada e o estado atualizado com o novo url
  }
}
