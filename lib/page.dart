import 'package:firebase/services/estduantes_services.dart';
import 'package:firebase/ventana2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final datosAlumno = Provider.of<EstudianteServices>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 181, 52, 43),
          centerTitle: true,
          title: const Text(
            'Primer app con Firebase',
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: ListView.builder(
          // ignore: unnecessary_null_comparison
          itemCount: datosAlumno.productos.length,
          itemBuilder: (BuildContext context, int index) {
            var nombre = datosAlumno.productos[index].nombre;
            var telefono = datosAlumno.productos[index].telefono;
            var matricula = datosAlumno.productos[index].matricula;
            var carrera = datosAlumno.productos[index].carrera;
            var semestre = datosAlumno.productos[index].semestre;
            var email = datosAlumno.productos[index].email;
            return ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              enabled: true,
              onLongPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ventana2(
                          matricula: matricula,
                          nombre: nombre,
                          carrera: carrera,
                          semestre: semestre,
                          telefono: telefono,
                          email: email),
                    ));
              },
              title: Text(nombre),
              subtitle: Text(carrera + " " + semestre),
              leading: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 174, 48, 39),
                child: Icon(Icons.account_box_rounded),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            );
          },
        ));
  }
}
