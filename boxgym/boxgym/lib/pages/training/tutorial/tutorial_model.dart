import '/flutter_flow/flutter_flow_util.dart';
import 'tutorial_widget.dart' show TutorialWidget;
import 'package:flutter/material.dart';

class TutorialModel extends FlutterFlowModel<TutorialWidget> {
  ///  Local state fields for this page.

  String? video;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - stringToVideo] action in Tutorial widget.
  String? videoOut;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
