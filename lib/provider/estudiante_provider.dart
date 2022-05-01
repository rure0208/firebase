import 'package:firebase/models/products.dart';
import 'package:flutter/widgets.dart';

class EstudianteProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
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
