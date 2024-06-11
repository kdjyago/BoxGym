import '/flutter_flow/flutter_flow_util.dart';
import 'config_widget.dart' show ConfigWidget;
import 'package:flutter/material.dart';

class ConfigModel extends FlutterFlowModel<ConfigWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
