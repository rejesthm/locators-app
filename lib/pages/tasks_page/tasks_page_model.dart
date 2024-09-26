import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tasks_page_widget.dart' show TasksPageWidget;
import 'package:flutter/material.dart';

class TasksPageModel extends FlutterFlowModel<TasksPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox widget.
  Map<TasksRecord, bool> checkboxValueMap = {};
  List<TasksRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
