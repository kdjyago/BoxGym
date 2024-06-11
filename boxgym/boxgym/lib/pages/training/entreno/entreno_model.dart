import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'entreno_widget.dart' show EntrenoWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class EntrenoModel extends FlutterFlowModel<EntrenoWidget> {
  ///  Local state fields for this page.

  bool animacion = false;

  bool terminado = false;

  bool aC = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer2 widget.
  final timer2InitialTimeMs = 1500;
  int timer2Milliseconds = 1500;
  String timer2Value = StopWatchTimer.getDisplayTime(
    1500,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timer2Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    timerController.dispose();
    timer2Controller.dispose();
  }
}
