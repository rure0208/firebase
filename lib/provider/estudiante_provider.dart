// ignore_for_file: avoid_print

import 'package:firebase/models/products.dart';
import 'package:flutter/widgets.dart';

class EstudianteProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Estudiante estudiantes;

  EstudianteProvider(this.estudiantes);

  actualizarDisponibilidad(String valor) {
    estudiantes.id = valor;
    notifyListeners();
  }

  bool isValidForm() {
    print(estudiantes.nombre);
    print(estudiantes.carrera);
    print(estudiantes.carrera);
    return formKey.currentState?.validate() ?? false;
  }
}
