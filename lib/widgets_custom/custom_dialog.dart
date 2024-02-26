import 'package:flutter/material.dart';
import 'package:flutter_kids/priv/confirmation_dialog.dart';

typedef OnContinueTap = void Function(BuildContext context);

class AppDialogs {
  AppDialogs._();

  static Future<void> showConfirmation(
    BuildContext context,
    String content,
    OnContinueTap onOk, {
    String? title,
    String? subContent,
    String? okText,
    String? cancelText,
    VoidCallback? onCancel,
    bool hideCancelButton = false,

    /// Set true to avoid close
    bool blockBack = false,
    bool expandOkButton = false,
  }) async {
    FocusScope.of(context).unfocus();

    await showDialog(
      context: context,
      barrierDismissible: !blockBack,
      builder: (BuildContext ctx) {
        return ConfirmationDialog(
          title: title,
          content: content,
          subContent: subContent,
          okText: okText,
          cancelText: cancelText,
          onOk: () => onOk(context),
          onCancel: onCancel,
          hideCancelButton: hideCancelButton,
          blockBack: blockBack,
          expandOkButton: expandOkButton,
        );
      },
    );
  }
}
