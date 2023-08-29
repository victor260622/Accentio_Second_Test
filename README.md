# restful_clean

**ES**:
Este proyecto es parte de la prueba tecnica como desarrollador Flutter en Accentio Studios
Esta prueba tecnica fue desarrollada con Flutter 3.13. y Dart 3.1.0

**PT**:
Este projeto faz parte do teste técnico como desenvolvedor Flutter na Accentio Studios
Este teste técnico foi desenvolvido com Flutter 3.13. e Dart 3.1.0

## Requisitos

**ES**:
En este proyecto te vas a encontrar un home donde deberia mostrar una foto de un perro que carga directo de un API Restful. La url del API es https://dog.ceo/api/breeds/image/random. La foto debe actualizarse al presionar el boton de actualizar.

Este proyecto usa la arquitectura Clean Dart. En caso de no estar familiarizado puedes leer mas en https://github.com/Flutterando/Clean-Dart

**PT:**
Neste projeto você encontrará um home onde deveria mostrar uma foto de um cachorro que carrega diretamente de uma API Restful. A url da API é https://dog.ceo/api/breeds/image/random. A foto deve ser atualizada ao pressionar o botão de atualização.

Este projeto usa a arquitetura Clean Dart. Caso não esteja familiarizado, você pode ler mais em https://github.com/Flutterando/Clean-Dart

**ES:**
### Tu tarea es la siguiente:
- [ ] Dentro de la capa infra tienes la implementación de la interfaz IHttpService. Este archivo se llama http_service_impl.dart. En este archivo debes implementar la funcion get que retorna un String con la respuesta del API. Utiliza la libreria que gustes como cliente HTTP.
- [ ] Dentro de la capa external tienes un archivo que implementa la interfaz IDogDatasource. Este archivo se llama dog_datasource_impl.dart. En este archivo debes implementar la funcion fetchDog que retorna un String con la url de la foto del perro. Aqui va a estar inyectado el IHttpService que implementaste en el paso anterior.
- [ ] Dentro de la capa presenter tienes el UI de la aplicación. El archivo presenter/pages/home_page.dart es donde vas a ver la vista de la aplicacion y donde se llama al repositorio que consume del datasource. Debes completar el codigo faltante para que la foto del perro se muestre en la pantalla.

**PT:**
### Sua tarefa é a seguinte:
- [ ] Dentro da camada infra você tem a implementação da interface IHttpService. Este arquivo é chamado http_service_impl.dart. Neste arquivo, você deve implementar a função get que retorna uma String com a resposta da API. Use a biblioteca que você gosta como cliente HTTP.
- [ ] Dentro da camada external, você tem um arquivo que implementa a interface IDogDatasource. Este arquivo é chamado dog_datasource_impl.dart. Neste arquivo, você deve implementar a função fetchDog que retorna uma String com a url da foto do cachorro. Aqui o IHttpService que você implementou na etapa anterior será injetado.
- [ ] Dentro da camada presenter, você tem a IU do aplicativo. O arquivo presenter/pages/home_page.dart é onde você verá a visualização do aplicativo e onde a chamada ao repositório que consome do datasource é feita. Você deve completar o código ausente para que a foto do cachorro seja exibida na tela.

## Como entregar la prueba / Como entregar o teste
**ES:**
Debes hacer un fork de este repositorio y crear un nuevo branch con tu nombre y apellido. Despues de hacer los cambios para solucionar la prueba debes hacer un pull request a este repositorio con los cambios realizados. Debes usar Conventional Commits para los mensajes de los commits.

**PT:**
Você deve fazer um fork deste repositório e criar um novo branch com seu nome e sobrenome. Após fazer as alterações para resolver o teste, você deve fazer uma solicitação pull para este repositório com as alterações feitas. Você deve usar Conventional Commits para as mensagens de commit.
