import 'package:flutter/material.dart';
import './home.dart';
import './realms.dart';
import './raideriopost.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CharacterField());
  }
}
