import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/widgets/categoria_no_seleccionada/categoria_no_seleccionada_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'modificar_entreno_model.dart';
export 'modificar_entreno_model.dart';

class ModificarEntrenoWidget extends StatefulWidget {
  const ModificarEntrenoWidget({
    super.key,
    required this.ruta,
  });

  final String? ruta;

  @override
  State<ModificarEntrenoWidget> createState() => _ModificarEntrenoWidgetState();
}

class _ModificarEntrenoWidgetState extends State<ModificarEntrenoWidget> {
  late ModificarEntrenoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModificarEntrenoModel());

    _model.taskFocusNode ??= FocusNode();

    _model.descriptionFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TrainingRecord>>(
      stream: queryTrainingRecord(
        queryBuilder: (trainingRecord) => trainingRecord.where(
          'name',
          isEqualTo: widget.ruta,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<TrainingRecord> modificarEntrenoTrainingRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final modificarEntrenoTrainingRecord =
            modificarEntrenoTrainingRecordList.isNotEmpty
                ? modificarEntrenoTrainingRecordList.first
                : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              appBar: AppBar(
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                automaticallyImplyLeading: false,
                title: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 12.0, 8.0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).secondary,
                            borderRadius: 12.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            icon: Icon(
                              Icons.chevron_left,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'n0zzi9io' /* Modificar Entreno */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '32xp8dki' /* Realiza los cambios necesarios... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ].divide(const SizedBox(height: 4.0)),
                ),
                actions: const [],
                centerTitle: false,
                elevation: 0.0,
              ),
              body: SafeArea(
                top: true,
                child: StreamBuilder<List<TrainingListRecord>>(
                  stream: queryTrainingListRecord(
                    queryBuilder: (trainingListRecord) =>
                        trainingListRecord.where(
                      'category',
                      isEqualTo: _model.choiceChipsValue,
                    ),
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<TrainingListRecord> formTrainingListRecordList =
                        snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final formTrainingListRecord =
                        formTrainingListRecordList.isNotEmpty
                            ? formTrainingListRecordList.first
                            : null;
                    return Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Container(
                                      constraints: const BoxConstraints(
                                        maxWidth: 770.0,
                                      ),
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextFormField(
                                              controller:
                                                  _model.taskTextController ??=
                                                      TextEditingController(
                                                text:
                                                    modificarEntrenoTrainingRecord
                                                        ?.name,
                                              ),
                                              focusNode: _model.taskFocusNode,
                                              autofocus: true,
                                              textCapitalization:
                                                  TextCapitalization.words,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '9c0be04t' /* Nombre... */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                errorStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 20.0,
                                                            16.0, 20.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .taskTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                            TextFormField(
                                              controller: _model
                                                      .descriptionTextController ??=
                                                  TextEditingController(
                                                text:
                                                    modificarEntrenoTrainingRecord
                                                        ?.descripcion,
                                              ),
                                              focusNode:
                                                  _model.descriptionFocusNode,
                                              autofocus: true,
                                              textCapitalization:
                                                  TextCapitalization.words,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '1xom4wqs' /* Descripcion... */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                alignLabelWithHint: true,
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                errorStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 16.0,
                                                            16.0, 16.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: 9,
                                              minLines: 5,
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              validator: _model
                                                  .descriptionTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                't8cxxbvn' /* Categoria */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            FlutterFlowChoiceChips(
                                              options: [
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nhj2lf2l' /* Cardio */,
                                                    ),
                                                    Icons.directions_run),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cztm6cve' /* Técnica */,
                                                    ),
                                                    FontAwesomeIcons.crown),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ufzy8f5w' /* Fuerza */,
                                                    ),
                                                    FontAwesomeIcons.dumbbell)
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.choiceChipsValue =
                                                      val?.firstOrNull),
                                              selectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                    ),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                iconSize: 18.0,
                                                elevation: 4.0,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              unselectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                    ),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                iconSize: 18.0,
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              chipSpacing: 12.0,
                                              rowSpacing: 12.0,
                                              multiselect: false,
                                              initialized:
                                                  _model.choiceChipsValue !=
                                                      null,
                                              alignment: WrapAlignment.start,
                                              controller: _model
                                                      .choiceChipsValueController ??=
                                                  FormFieldController<
                                                      List<String>>(
                                                [
                                                  modificarEntrenoTrainingRecord!
                                                      .category
                                                ],
                                              ),
                                              wrapped: true,
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ng5mcw0u' /* Entreno */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownCValueController ??=
                                                  FormFieldController<String>(
                                                _model.dropDownCValue ??=
                                                    modificarEntrenoTrainingRecord
                                                        ?.technicalName,
                                              ),
                                              options: formTrainingListRecord!
                                                  .training,
                                              onChanged: (val) => setState(() =>
                                                  _model.dropDownCValue = val),
                                              width: 300.0,
                                              height: 56.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '7lhm17q4' /* Selecciona el entrenamiento... */,
                                              ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              disabled: _model
                                                          .choiceChipsValue ==
                                                      null ||
                                                  _model.choiceChipsValue == '',
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '10x6zekl' /* Tiempo (mins) */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Container(
                                              width: 160.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: FlutterFlowCountController(
                                                decrementIconBuilder:
                                                    (enabled) => FaIcon(
                                                  FontAwesomeIcons.minus,
                                                  color: enabled
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  size: 20.0,
                                                ),
                                                incrementIconBuilder:
                                                    (enabled) => FaIcon(
                                                  FontAwesomeIcons.plus,
                                                  color: enabled
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  size: 20.0,
                                                ),
                                                countBuilder: (count) => Text(
                                                  count.toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                count: _model
                                                        .initialTimerValue ??=
                                                    functions.calcularTiempo2(
                                                        modificarEntrenoTrainingRecord
                                                            ?.startTimer)!,
                                                updateCount: (count) =>
                                                    setState(() => _model
                                                            .initialTimerValue =
                                                        count),
                                                stepSize: 1,
                                              ),
                                            ),
                                          ]
                                              .divide(const SizedBox(height: 12.0))
                                              .addToEnd(const SizedBox(height: 32.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) => Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 16.0, 12.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          if ((_model.choiceChipsValue !=
                                                      null &&
                                                  _model.choiceChipsValue !=
                                                      '') &&
                                              (_model.dropDownCValue != null &&
                                                  _model.dropDownCValue !=
                                                      '')) {
                                            _model.imagen = () {
                                              if (_model.dropDownCValue ==
                                                  'Correr') {
                                                return 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScbTWCjHGPwo6wFJZiPx9oBOyNbZmHMHc54Q&s';
                                              } else if (_model
                                                      .dropDownCValue ==
                                                  'Sombra') {
                                                return 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgy-PAV3SLwR9B5YT-yxCn6Kk_LUsN7mh8XrrUPlsVzFy0Q-bcY5QF28v0UHgP1CYTxsHoGLPU1bDj7wxZe6VjaipwG2FhfuUm0jn_Dhsh2DCKxIdb6Zg8-TFX7ufAqK78Kc4vrWPOQmkY/s1600/boxeo-de-sombra.jpg';
                                              } else if (_model
                                                      .dropDownCValue ==
                                                  'Comba') {
                                                return 'https://png.pngtree.com/thumb_back/fw800/background/20220501/pngtree-boxer-jumping-rope-in-boxing-ring-muscular-cinematic-skipping-photo-image_45493178.jpg';
                                              } else if (_model
                                                      .dropDownCValue ==
                                                  'Golpes en Velocidad') {
                                                return 'https://i.blogs.es/bed467/boxeo-entrenamiento/840_560.jpg';
                                              } else if (_model
                                                      .dropDownCValue ==
                                                  'Punching bag') {
                                                return 'https://a.espncdn.com/media/motion/2015/0428/dm_150423_Mayweather_Critics1061/dm_150423_Mayweather_Critics1061.jpg';
                                              } else if (_model
                                                      .dropDownCValue ==
                                                  'Golpes a Manoplas') {
                                                return 'https://www.maxxproboxing.com/wp-content/uploads/2023/05/shutterstock_2282645041.jpg';
                                              } else if (_model
                                                      .dropDownCValue ==
                                                  'Asalto de Saco Ligero') {
                                                return 'https://ae01.alicdn.com/kf/Sf00f35540b4f4a938b3658de8790c5efN.jpg_640x640Q90.jpg_.webp';
                                              } else if (_model
                                                      .dropDownCValue ==
                                                  'Asalto de Saco Medio') {
                                                return 'https://miro.medium.com/v2/resize:fit:2000/1*xvwdcTkOH76XYI8fQB2N4g.jpeg';
                                              } else if (_model
                                                      .dropDownCValue ==
                                                  'Asalto de Saco Pesado') {
                                                return 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/USMC-100509-M-2339L-173.jpg/1200px-USMC-100509-M-2339L-173.jpg';
                                              } else if (_model
                                                      .dropDownCValue ==
                                                  'Pesas') {
                                                return 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTseK73LnXsW5Knq0LGB7dXIHjblcXPLMGbFQ&s';
                                              } else {
                                                return 'vacio';
                                              }
                                            }();
                                            setState(() {});

                                            context.pushNamed('Main');

                                            await Future.delayed(const Duration(
                                                milliseconds: 1000));

                                            await modificarEntrenoTrainingRecord!
                                                .reference
                                                .update(
                                                    createTrainingRecordData(
                                              name: _model
                                                  .taskTextController.text,
                                              category: _model.choiceChipsValue,
                                              technicalName:
                                                  _model.dropDownCValue,
                                              descripcion: _model
                                                  .descriptionTextController
                                                  .text,
                                              startTimer:
                                                  _model.initialTimerValue,
                                              image: _model.imagen,
                                            ));
                                            return;
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: WebViewAware(
                                                    child: GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: SizedBox(
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.35,
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.6,
                                                        child:
                                                            const CategoriaNoSeleccionadaWidget(),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));

                                            return;
                                          }
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'kepmvfah' /* Guardar Cambios */,
                                        ),
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 48.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            constraints: const BoxConstraints(
                              maxWidth: 770.0,
                            ),
                            decoration: const BoxDecoration(),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
