import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cambios_perfil_widget.dart' show CambiosPerfilWidget;
import 'package:flutter/material.dart';

class CambiosPerfilModel extends FlutterFlowModel<CambiosPerfilWidget> {
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
