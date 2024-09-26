import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'business_modules_model.dart';
export 'business_modules_model.dart';

class BusinessModulesWidget extends StatefulWidget {
  const BusinessModulesWidget({
    super.key,
    required this.projectItemValue,
    this.titlevalue,
  });

  final String? projectItemValue;
  final String? titlevalue;

  @override
  State<BusinessModulesWidget> createState() => _BusinessModulesWidgetState();
}

class _BusinessModulesWidgetState extends State<BusinessModulesWidget> {
  late BusinessModulesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BusinessModulesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 300.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: Text(
                  'Business Modules',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: FlutterFlowRadioButton(
                  options:
                      ['Rack Inspection', 'Load Notice Assessment'].toList(),
                  onChanged: (val) => safeSetState(() {}),
                  controller: _model.radioButtonValueController ??=
                      FormFieldController<String>(null),
                  optionHeight: 45.0,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                  selectedTextStyle:
                      FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                  buttonPosition: RadioButtonPosition.left,
                  direction: Axis.vertical,
                  radioButtonColor: Color(0xFF9F2756),
                  inactiveRadioButtonColor:
                      FlutterFlowTheme.of(context).secondaryText,
                  toggleable: false,
                  horizontalAlignment: WrapAlignment.start,
                  verticalAlignment: WrapCrossAlignment.start,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'CANCEL',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: Color(0xFF9F2756),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    Text(
                      'CHOOSE',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
