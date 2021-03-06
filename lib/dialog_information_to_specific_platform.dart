library informationplatformdialog;

import 'dart:io' show Platform;

import 'package:flutter/material.dart';

import 'flat_buttons/actions_flatbutton_to_alert_dialog.dart';
import 'src/information_cupertino_alert_dialog.dart';
import 'src/information_material_alert_dialog.dart';

class InformationAlertDialog extends StatelessWidget {
  final Icon iconTitle;
  final String title;
  final String message;
  final List<Widget> buttons;

  const InformationAlertDialog({
    this.iconTitle,
    this.title,
    @required this.message,
    this.buttons,
  }) : assert(iconTitle != null || title != null);

  static Widget createFlatButton(
      {String messageButton,
      TextStyle textStyleMessageButton,
      Icon iconButton,
      bool isEnabled = true}) {
    return ActionsFlatButtonToAlertDialog(
      messageButton: messageButton,
      textStyleMessageButton: textStyleMessageButton,
      iconButton: iconButton,
      isEnabled: isEnabled,
    );
  }

  @override
  Widget build(BuildContext context) {
    return (Platform.isAndroid)
        ? InformationMaterialAlertDialog(
            iconTitle: iconTitle,
            title: title,
            message: message,
            buttons: (buttons != null) ? buttons : _createADefaultFlatButton(),
          )
        : InformationCupertinoAlertDialog(
            iconTitle: iconTitle,
            title: title,
            message: message,
            buttons: (buttons != null) ? buttons : _createADefaultFlatButton(),
          );
  }

  List<Widget> _createADefaultFlatButton() {
    List<Widget> buttons = List<Widget>();
    buttons.add(InformationAlertDialog.createFlatButton(
      messageButton: 'OK',
    ));
    return buttons;
  }
}
