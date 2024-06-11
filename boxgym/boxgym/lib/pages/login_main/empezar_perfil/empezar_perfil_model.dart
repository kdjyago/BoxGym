import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'empezar_perfil_widget.dart' show EmpezarPerfilWidget;
import 'package:flutter/material.dart';

class EmpezarPerfilModel extends FlutterFlowModel<EmpezarPerfilWidget> {
  ///  Local state fields for this page.

  String? email;

  String? password;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for userName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;
  // State field(s) for phoneNum widget.
  FocusNode? phoneNumFocusNode;
  TextEditingController? phoneNumTextController;
  String? Function(BuildContext, String?)? phoneNumTextControllerValidator;
  // State field(s) for age widget.
  String? ageValue;
  FormFieldController<String>? ageValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UserRecord? user;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userNameFocusNode?.dispose();
    userNameTextController?.dispose();

    phoneNumFocusNode?.dispose();
    phoneNumTextController?.dispose();
  }
}
