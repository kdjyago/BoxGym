import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? integerToString(int? numero) {
  String? texto;
  if (numero != null) {
    try {
      texto = integerToString(numero);
    } catch (e) {
      print("Error al convertir el texto a entero: $e");
    }
  }
  return texto;
}

int? calcularTiempo2(int? numero) {
  int? result;
  if (numero != null) {
    result = numero ~/ 60000;
  } else {
    result = null;
  }
  return result;
}

int? stringToInteger(String? texto) {
  int? number;
  if (texto != null) {
    try {
      number = int.parse(texto);
    } catch (e) {
      print("Error al convertir el texto a entero: $e");
    }
  }
  return number;
}

int? calcularTiempo(int? numero) {
  int? result;
  if (numero != null) {
    result = numero *
        60000; // Multiplica el número por 60,000 para convertir minutos a milisegundos
  } else {
    result = null;
  }
  return result;
}

String? videoToString(String? video) {
  String result;
  result = video.toString();
  return result;
}

bool? numPrimero(String texto) {
  // Verificar si la cadena no está vacía y el primer carácter es un dígito
  if (texto.isNotEmpty && RegExp(r'^\d').hasMatch(texto[0])) {
    return true;
  }
  return false;
}

String? separarDescuento(String texto) {
  // Definir la expresión regular para encontrar el patrón de descuento
  final regex = RegExp(r'(\d+)%descuento-');

  // Reemplazar el patrón encontrado con el formato deseado
  final nuevoTexto = texto.replaceAllMapped(regex, (match) {
    return '${match.group(1)}%-';
  });

  return nuevoTexto;
}
