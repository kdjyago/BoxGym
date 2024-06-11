import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_entreno_admin_widget.dart' show CrearEntrenoAdminWidget;
import 'package:flutter/material.dart';

class CrearEntrenoAdminModel extends FlutterFlowModel<CrearEntrenoAdminWidget> {
  ///  Local state fields for this page.

  String? imagen =
      'https://media.istockphoto.com/id/528606326/es/vector/icono-de-pesa.jpg?s=612x612&w=0&k=20&c=M3oPQz-_Hxt5RYr806OybhFsRscJUpVa8aL9XvBPNRY=';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for task widget.
  FocusNode? taskFocusNode;
  TextEditingController? taskTextController;
  String? Function(BuildContext, String?)? taskTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    taskFocusNode?.dispose();
    taskTextController?.dispose();
  }
}
