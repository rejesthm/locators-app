import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_project_page_widget.dart' show AddProjectPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddProjectPageModel extends FlutterFlowModel<AddProjectPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for projectReference widget.
  FocusNode? projectReferenceFocusNode;
  TextEditingController? projectReferenceTextController;
  String? Function(BuildContext, String?)?
      projectReferenceTextControllerValidator;
  String? _projectReferenceTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Project reference is required';
    }

    return null;
  }

  // State field(s) for projectTitle widget.
  FocusNode? projectTitleFocusNode;
  TextEditingController? projectTitleTextController;
  String? Function(BuildContext, String?)? projectTitleTextControllerValidator;
  String? _projectTitleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Project title is required';
    }

    return null;
  }

  // State field(s) for projectDescription widget.
  FocusNode? projectDescriptionFocusNode;
  TextEditingController? projectDescriptionTextController;
  String? Function(BuildContext, String?)?
      projectDescriptionTextControllerValidator;
  String? _projectDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Project description is required';
    }

    return null;
  }

  // State field(s) for projectStatus widget.
  String? projectStatusValue;
  FormFieldController<String>? projectStatusValueController;

  @override
  void initState(BuildContext context) {
    projectReferenceTextControllerValidator =
        _projectReferenceTextControllerValidator;
    projectTitleTextControllerValidator = _projectTitleTextControllerValidator;
    projectDescriptionTextControllerValidator =
        _projectDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    projectReferenceFocusNode?.dispose();
    projectReferenceTextController?.dispose();

    projectTitleFocusNode?.dispose();
    projectTitleTextController?.dispose();

    projectDescriptionFocusNode?.dispose();
    projectDescriptionTextController?.dispose();
  }
}
