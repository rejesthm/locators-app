import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_task_page_widget.dart' show AddTaskPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddTaskPageModel extends FlutterFlowModel<AddTaskPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for taskTitle widget.
  FocusNode? taskTitleFocusNode;
  TextEditingController? taskTitleTextController;
  String? Function(BuildContext, String?)? taskTitleTextControllerValidator;
  String? _taskTitleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Task title is required';
    }

    return null;
  }

  // State field(s) for taskDescription widget.
  FocusNode? taskDescriptionFocusNode;
  TextEditingController? taskDescriptionTextController;
  String? Function(BuildContext, String?)?
      taskDescriptionTextControllerValidator;
  String? _taskDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Task description is required';
    }

    return null;
  }

  // State field(s) for taskPriority widget.
  bool? taskPriorityValue;
  // State field(s) for taskCompleted widget.
  bool? taskCompletedValue;

  @override
  void initState(BuildContext context) {
    taskTitleTextControllerValidator = _taskTitleTextControllerValidator;
    taskDescriptionTextControllerValidator =
        _taskDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    taskTitleFocusNode?.dispose();
    taskTitleTextController?.dispose();

    taskDescriptionFocusNode?.dispose();
    taskDescriptionTextController?.dispose();
  }
}
