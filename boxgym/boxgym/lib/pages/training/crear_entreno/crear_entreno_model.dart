import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_entreno_widget.dart' show CrearEntrenoWidget;
import 'package:flutter/material.dart';

class CrearEntrenoModel extends FlutterFlowModel<CrearEntrenoWidget> {
  ///  Local state fields for this page.

  String? imagen =
      'https://media.istockphoto.com/id/528606326/es/vector/icono-de-pesa.jpg?s=612x612&w=0&k=20&c=M3oPQz-_Hxt5RYr806OybhFsRscJUpVa8aL9XvBPNRY=';

  String? video;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for task widget.
  FocusNode? taskFocusNode;
  TextEditingController? taskTextController;
  String? Function(BuildContext, String?)? taskTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for DropDownC widget.
  String? dropDownCValue;
  FormFieldController<String>? dropDownCValueController;
  // State field(s) for initialTimer widget.
  int? initialTimerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    taskFocusNode?.dispose();
    taskTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
