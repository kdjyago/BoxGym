import '/flutter_flow/flutter_flow_util.dart';
import 'cambio_contrasena_widget.dart' show CambioContrasenaWidget;
import 'package:flutter/material.dart';

class CambioContrasenaModel extends FlutterFlowModel<CambioContrasenaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
