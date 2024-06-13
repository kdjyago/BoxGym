import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  dynamic _listaEmpleados;
  dynamic get listaEmpleados => _listaEmpleados;
  set listaEmpleados(dynamic value) {
    _listaEmpleados = value;
  }

  dynamic _entrenosC;
  dynamic get entrenosC => _entrenosC;
  set entrenosC(dynamic value) {
    _entrenosC = value;
  }

  List<String> _entrenoNuevo = [];
  List<String> get entrenoNuevo => _entrenoNuevo;
  set entrenoNuevo(List<String> value) {
    _entrenoNuevo = value;
  }

  void addToEntrenoNuevo(String value) {
    entrenoNuevo.add(value);
  }

  void removeFromEntrenoNuevo(String value) {
    entrenoNuevo.remove(value);
  }

  void removeAtIndexFromEntrenoNuevo(int index) {
    entrenoNuevo.removeAt(index);
  }

  void updateEntrenoNuevoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    entrenoNuevo[index] = updateFn(_entrenoNuevo[index]);
  }

  void insertAtIndexInEntrenoNuevo(int index, String value) {
    entrenoNuevo.insert(index, value);
  }

  bool _esAdmin = false;
  bool get esAdmin => _esAdmin;
  set esAdmin(bool value) {
    _esAdmin = value;
  }
}
