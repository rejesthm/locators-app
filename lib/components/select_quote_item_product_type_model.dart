import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'select_quote_item_product_type_widget.dart'
    show SelectQuoteItemProductTypeWidget;
import 'package:flutter/material.dart';

class SelectQuoteItemProductTypeModel
    extends FlutterFlowModel<SelectQuoteItemProductTypeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
