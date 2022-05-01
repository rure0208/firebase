// To parse this JSON data, do
//
//     final estudiante = estudianteFromMap(jsonString);

import 'dart:convert';

class Estudiante {
  Estudiante(
      {required this.carrera,
      required this.email,
      required this.matricula,
      required this.nombre,
      required this.semestre,
      required this.telefono,
      this.id});

  String carrera;
  String email;
  String matricula;
  String nombre;
  String semestre;
  String telefono;
  String? id;

  factory Estudiante.fromJson(String str) =>
      Estudiante.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Estudiante.fromMap(Map<String, dynamic> json) => Estudiante(
        carrera: json["carrera"],
        email: json["email"],
        matricula: json["matricula"],
        nombre: json["nombre"],
        semestre: json["semestre"],
        telefono: json["telefono"],
      );

  Map<String, dynamic> toMap() => {
        "carrera": carrera,
        "email": email,
        "matricula": matricula,
        "nombre": nombre,
        "semestre": semestre,
        "telefono": telefono,
      };
  Estudiante copia() => Estudiante(
        carrera: carrera,
        email: email,
        nombre: nombre,
        matricula: matricula,
        telefono: telefono,
        semestre: semestre,
        id: id,
      );
}
