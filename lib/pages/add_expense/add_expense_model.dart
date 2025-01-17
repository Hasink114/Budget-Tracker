import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'add_expense_widget.dart' show AddExpenseWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddExpenseModel extends FlutterFlowModel<AddExpenseWidget> {
  ///  Local state fields for this page.

  String type = 'expense';

  ///  State fields for stateful widgets in this page.

  // State field(s) for AmountFeild widget.
  FocusNode? amountFeildFocusNode;
  TextEditingController? amountFeildTextController;
  String? Function(BuildContext, String?)? amountFeildTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountFeildFocusNode?.dispose();
    amountFeildTextController?.dispose();
  }
}
