import '/flutter_flow/flutter_flow_util.dart';
import 'id_ver_widget.dart' show IdVerWidget;
import 'package:flutter/material.dart';

class IdVerModel extends FlutterFlowModel<IdVerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var idUser = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
