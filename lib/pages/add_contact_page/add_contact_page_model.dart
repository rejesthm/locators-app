import '/flutter_flow/flutter_flow_util.dart';
import 'add_contact_page_widget.dart' show AddContactPageWidget;
import 'package:flutter/material.dart';

class AddContactPageModel extends FlutterFlowModel<AddContactPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for contactName widget.
  FocusNode? contactNameFocusNode;
  TextEditingController? contactNameTextController;
  String? Function(BuildContext, String?)? contactNameTextControllerValidator;
  String? _contactNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Contact name is required';
    }

    return null;
  }

  // State field(s) for company widget.
  FocusNode? companyFocusNode;
  TextEditingController? companyTextController;
  String? Function(BuildContext, String?)? companyTextControllerValidator;
  String? _companyTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Company name is required';
    }

    return null;
  }

  // State field(s) for position widget.
  FocusNode? positionFocusNode;
  TextEditingController? positionTextController;
  String? Function(BuildContext, String?)? positionTextControllerValidator;
  String? _positionTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Position is required';
    }

    return null;
  }

  // State field(s) for contactAddress widget.
  FocusNode? contactAddressFocusNode;
  TextEditingController? contactAddressTextController;
  String? Function(BuildContext, String?)?
      contactAddressTextControllerValidator;
  String? _contactAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Contact address is required';
    }

    return null;
  }

  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  String? _phoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone number is required';
    }

    return null;
  }

  // State field(s) for mobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberTextController;
  String? Function(BuildContext, String?)? mobileNumberTextControllerValidator;
  String? _mobileNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Mobile number is required';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    contactNameTextControllerValidator = _contactNameTextControllerValidator;
    companyTextControllerValidator = _companyTextControllerValidator;
    positionTextControllerValidator = _positionTextControllerValidator;
    contactAddressTextControllerValidator =
        _contactAddressTextControllerValidator;
    phoneNumberTextControllerValidator = _phoneNumberTextControllerValidator;
    mobileNumberTextControllerValidator = _mobileNumberTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
  }

  @override
  void dispose() {
    contactNameFocusNode?.dispose();
    contactNameTextController?.dispose();

    companyFocusNode?.dispose();
    companyTextController?.dispose();

    positionFocusNode?.dispose();
    positionTextController?.dispose();

    contactAddressFocusNode?.dispose();
    contactAddressTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
