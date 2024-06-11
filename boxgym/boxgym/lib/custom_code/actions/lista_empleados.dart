// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> listaEmpleados() async {
  // Add your function code here!
  return {
    "empleados": [
      {
        "nombre": "pepe",
        "edad": "18-24",
        "foto":
            "https://a.espncdn.com/i/headshots/mma/players/full/3022677.png",
        "id": "111A",
        "admin": true
      },
      {"nombre": "manolo", "edad": 60, "id": "111B", "admin": false},
      {
        "nombre": "fulano",
        "edad": "18-24",
        "foto":
            "https://hips.hearstapps.com/hmg-prod/images/mike-tyson-stands-in-the-ring-during-the-fight-with-carl-news-photo-1588578940.jpg?crop=0.68219xw:1xh;center,top&resize=2048:*",
        "id": "111C",
        "admin": false
      }
    ]
  };
}
