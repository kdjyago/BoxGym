import '/flutter_flow/flutter_flow_util.dart';
import 'recompensas_widget.dart' show RecompensasWidget;
import 'package:flutter/material.dart';

class RecompensasModel extends FlutterFlowModel<RecompensasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
