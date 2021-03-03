import 'package:app_mascotas_ui/src/home_mascotas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeMascota()
    );
  }
}