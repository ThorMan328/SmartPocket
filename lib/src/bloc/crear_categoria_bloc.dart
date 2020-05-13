import 'dart:async';

class CrearCategoriaBloc {

  final _idController = StreamController<String>.broadcast();

  //insertar valores al stream 
  Function(String) get cambiarId => _idController.sink.add;

  //recuperar valores del stream 
  Stream<String> get idStream => _idController.stream;

  dispose(){
    _idController?.close();
  }

}