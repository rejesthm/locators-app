import '/flutter_flow/flutter_flow_util.dart';
import 'add_task_page_widget.dart' show AddTaskPageWidget;
import 'package:flutter/material.dart';

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
