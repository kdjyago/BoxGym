import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tienda_widget.dart' show TiendaWidget;
import 'package:flutter/material.dart';

class TiendaModel extends FlutterFlowModel<TiendaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  RewardsRecord? documento;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
