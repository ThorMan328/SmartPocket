import 'package:flutter/material.dart';
import 'package:smart_pocket/src/bloc/crear_categoria_bloc.dart';
export 'package:smart_pocket/src/bloc/crear_categoria_bloc.dart';

class Provider extends InheritedWidget {
  
  final crearCategoriaBloc = CrearCategoriaBloc();
  
  Provider({Key key, Widget child})
    : super(key: key, child: child);


  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static CrearCategoriaBloc of ( BuildContext context ) {
    return context.dependOnInheritedWidgetOfExactType<Provider>().crearCategoriaBloc;
  }
}