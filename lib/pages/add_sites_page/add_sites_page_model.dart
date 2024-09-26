import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_sites_page_widget.dart' show AddSitesPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddSitesPageModel extends FlutterFlowModel<AddSitesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for siteReference widget.
  FocusNode? siteReferenceFocusNode;
  TextEditingController? siteReferenceTextController;
  String? Function(BuildContext, String?)? siteReferenceTextControllerValidator;
  String? _siteReferenceTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Site reference is required';
    }

    return null;
  }

  // State field(s) for siteAddress widget.
  FocusNode? siteAddressFocusNode;
  TextEditingController? siteAddressTextController;
  String? Function(BuildContext, String?)? siteAddressTextControllerValidator;
  String? _siteAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Site Address is required';
    }

    return null;
  }

  // State field(s) for sitePhoneNumber widget.
  FocusNode? sitePhoneNumberFocusNode;
  TextEditingController? sitePhoneNumberTextController;
  String? Function(BuildContext, String?)?
      sitePhoneNumberTextControllerValidator;
  String? _sitePhoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Site Phone number is required';
    }

    return null;
  }

  // State field(s) for siteEmail widget.
  FocusNode? siteEmailFocusNode;
  TextEditingController? siteEmailTextController;
  String? Function(BuildContext, String?)? siteEmailTextControllerValidator;
  String? _siteEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Site email is required';
    }

    return null;
  }

  // State field(s) for invoiceAddress widget.
  FocusNode? invoiceAddressFocusNode;
  TextEditingController? invoiceAddressTextController;
  String? Function(BuildContext, String?)?
      invoiceAddressTextControllerValidator;
  String? _invoiceAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Invoice address is required';
    }

    return null;
  }

  // State field(s) for invoicePhoneNumber widget.
  FocusNode? invoicePhoneNumberFocusNode;
  TextEditingController? invoicePhoneNumberTextController;
  String? Function(BuildContext, String?)?
      invoicePhoneNumberTextControllerValidator;
  String? _invoicePhoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Invoice Phone number is required';
    }

    return null;
  }

  // State field(s) for invoiceEmail widget.
  FocusNode? invoiceEmailFocusNode;
  TextEditingController? invoiceEmailTextController;
  String? Function(BuildContext, String?)? invoiceEmailTextControllerValidator;
  String? _invoiceEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Invoice email is required';
    }

    return null;
  }

  // State field(s) for website widget.
  FocusNode? websiteFocusNode;
  TextEditingController? websiteTextController;
  String? Function(BuildContext, String?)? websiteTextControllerValidator;
  String? _websiteTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Website  is required';
    }

    return null;
  }

  // State field(s) for companyNumber widget.
  FocusNode? companyNumberFocusNode;
  TextEditingController? companyNumberTextController;
  String? Function(BuildContext, String?)? companyNumberTextControllerValidator;
  String? _companyNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' Company number is required';
    }

    return null;
  }

  // State field(s) for vatNumber widget.
  FocusNode? vatNumberFocusNode;
  TextEditingController? vatNumberTextController;
  String? Function(BuildContext, String?)? vatNumberTextControllerValidator;
  String? _vatNumberTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'VAT number is required';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? siteDataList;

  @override
  void initState(BuildContext context) {
    siteReferenceTextControllerValidator =
        _siteReferenceTextControllerValidator;
    siteAddressTextControllerValidator = _siteAddressTextControllerValidator;
    sitePhoneNumberTextControllerValidator =
        _sitePhoneNumberTextControllerValidator;
    siteEmailTextControllerValidator = _siteEmailTextControllerValidator;
    invoiceAddressTextControllerValidator =
        _invoiceAddressTextControllerValidator;
    invoicePhoneNumberTextControllerValidator =
        _invoicePhoneNumberTextControllerValidator;
    invoiceEmailTextControllerValidator = _invoiceEmailTextControllerValidator;
    websiteTextControllerValidator = _websiteTextControllerValidator;
    companyNumberTextControllerValidator =
        _companyNumberTextControllerValidator;
    vatNumberTextControllerValidator = _vatNumberTextControllerValidator;
  }

  @override
  void dispose() {
    siteReferenceFocusNode?.dispose();
    siteReferenceTextController?.dispose();

    siteAddressFocusNode?.dispose();
    siteAddressTextController?.dispose();

    sitePhoneNumberFocusNode?.dispose();
    sitePhoneNumberTextController?.dispose();

    siteEmailFocusNode?.dispose();
    siteEmailTextController?.dispose();

    invoiceAddressFocusNode?.dispose();
    invoiceAddressTextController?.dispose();

    invoicePhoneNumberFocusNode?.dispose();
    invoicePhoneNumberTextController?.dispose();

    invoiceEmailFocusNode?.dispose();
    invoiceEmailTextController?.dispose();

    websiteFocusNode?.dispose();
    websiteTextController?.dispose();

    companyNumberFocusNode?.dispose();
    companyNumberTextController?.dispose();

    vatNumberFocusNode?.dispose();
    vatNumberTextController?.dispose();
  }
}
