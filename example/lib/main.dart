import 'package:dialog_information_to_specific_platform/dialog_information_to_specific_platform.dart';
import 'package:dialog_information_to_specific_platform/flat_buttons/actions_flatbutton_to_alert_dialog.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Package View Tester'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.message),
          tooltip: 'Press do show the platform dialog',
          elevation: 10,
          onPressed: () async {
            await showDialog(
              barrierDismissible: false,
              context: context,
              child: InformationAlertDialog(
                iconTitle: Icon(
                  Icons.error,
                  color: Colors.red,
                ),
                title: 'Dialog title',
                message: 'Dialog content',
                // buttons: [
                //   ActionsFlatButtonToAlertDialog(
                //     messageButton: 'Cancelar',
                //   ),
                //   //   InformationAlertDialog.createFlatButton(),
                // ],
              ),
            );
          }),
    );
  }
}
