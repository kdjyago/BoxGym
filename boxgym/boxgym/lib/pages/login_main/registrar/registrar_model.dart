import '/flutter_flow/flutter_flow_util.dart';
import 'registrar_widget.dart' show RegistrarWidget;
import 'package:flutter/material.dart';

class RegistrarModel extends FlutterFlowModel<RegistrarWidget> {
  ///  Local state fields for this page.

  List<String> listaVacia = ['Entreno Default'];
  void addToListaVacia(String item) => listaVacia.add(item);
  void removeFromListaVacia(String item) => listaVacia.remove(item);
  void removeAtIndexFromListaVacia(int index) => listaVacia.removeAt(index);
  void insertAtIndexInListaVacia(int index, String item) =>
      listaVacia.insert(index, item);
  void updateListaVaciaAtIndex(int index, Function(String) updateFn) =>
      listaVacia[index] = updateFn(listaVacia[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
