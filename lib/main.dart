import 'package:flutter/material.dart';
import 'package:store_app/screens/home_screen.dart'; // Sesuaikan jalur dengan struktur folder Anda

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Pastikan HomeScreen diimpor dengan benar
    );
  }
}
