import 'package:flutter/material.dart';
import 'package:layout_db_sound_meter/settings.dart';
import 'radial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();

}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      title: "Demo",
      routes: {
        '/' : (context) => Radial(),
        '/settings' : (context) => const Settings(),
    },



    );
  }

}