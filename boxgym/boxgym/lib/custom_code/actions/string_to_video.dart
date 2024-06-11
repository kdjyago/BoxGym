// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

Future<String> stringToVideo(String? video) async {
  // Add your function code here!

  // Validar que el video no sea nulo o vacío
  if (video == null || video.isEmpty) {
    throw ArgumentError('El video no puede ser nulo o vacío');
  }

  // Validar si la cadena es una URL válida
  bool isValidUrl = Uri.tryParse(video)?.hasAbsolutePath ?? false;
  if (!isValidUrl) {
    throw ArgumentError('La cadena no es una URL válida');
  }

  // Devolver la URL del video validada
  return video;
}
