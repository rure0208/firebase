import 'dart:convert';
import 'package:firebase/models/products.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

//dart code
class EstudianteServices extends ChangeNotifier {
  final String _MiUrl = 'estudiante-1676a-default-rtdb.firebaseio.com';
  final List<Estudiante> productos = [];
//Estudiante tipo de dato

  bool cargando = true;

  EstudianteServices() {
    cargandoInformacion();
  }

  Future cargandoInformacion() async {
    cargando = true;
    notifyListeners();
    final url = Uri.https(_MiUrl, 'products.json');
    final respuesta = await http.get(url);
    //.body cuerpo

    // ignore: non_constant_identifier_names
    final Map<String, dynamic> MapaEstudiante = json.decode(respuesta.body);
    MapaEstudiante.forEach((key, valor) {
      final temporal = Estudiante.fromMap(valor);
      temporal.id = key;
      productos.add(temporal);
    });

    cargando = false;
    notifyListeners();
    return productos;
  }
}
