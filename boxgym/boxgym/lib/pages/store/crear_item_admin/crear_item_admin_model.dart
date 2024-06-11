import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_item_admin_widget.dart' show CrearItemAdminWidget;
import 'package:flutter/material.dart';

class CrearItemAdminModel extends FlutterFlowModel<CrearItemAdminWidget> {
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
  FocusNode? taskFocusNode1;
  TextEditingController? taskTextController1;
  String? Function(BuildContext, String?)? taskTextController1Validator;
  // State field(s) for task widget.
  FocusNode? taskFocusNode2;
  TextEditingController? taskTextController2;
  String? Function(BuildContext, String?)? taskTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    taskFocusNode1?.dispose();
    taskTextController1?.dispose();

    taskFocusNode2?.dispose();
    taskTextController2?.dispose();
  }
}
