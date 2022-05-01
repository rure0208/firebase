import 'package:firebase/services/estduantes_services.dart';
import 'package:flutter/material.dart';
import 'package:firebase/page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // Los providers gestionan los servicios
      providers: [
        ChangeNotifierProvider(
          create: (_) => EstudianteServices(),
        ),
      ],
      child: const MyForms(),
    );
  }
}

class MyForms extends StatelessWidget {
  const MyForms({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomePage(),
      },
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 34, 34, 34),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.blueGrey,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
        ),
      ),
    );
  }
}
