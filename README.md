# dialog_information_to_specific_platform

This package refers to the specialized widgets from [AlertDialog] (https://api.flutter.dev/flutter/material/AlertDialog-class.html) and [CupertinoAlertDialog] (https://api.flutter.dev/flutter/ cupertino / CupertinoAlertDialog-class.html). You only need to invoke the widget from this package and, depending on the platform on which your application is running, a Material Dialog or Cupertino Dialog will be rendered.

## Getting Started

To use this package, first of all, you need to configure `pubspec.yaml` according to what is presented below.

```
dependencies:
  dialog_information_to_specific_platform: <última-versão>
```

After configuration, you need to run flutter packages get, on the console / terminal or in your IDE.

In your Widget it is necessary to import the following packages, where the second will be necessary only for the creation of the buttons for Dialog, but it is possible for you to send a List with your Widgets.

```
import 'package:dialog_information_to_specific_platform/dialog_information_to_specific_platform.dart';
import 'package:dialog_information_to_specific_platform/flat_buttons/actions_flatbutton_to_alert_dialog.dart';
```


## Basic use

As a test for viewing a dialog, we will initially have the following image, displaying a Scaffold with a FAB that, when activated, will display the Dialog.

![The benchmark view with a FAB to display the dialog and the benchmark view with the dialog display](/assets/readme/figura_01.png)

In order to get to the previous images, we need to implement the widget presented below.

```
import 'package:dialog_information_to_specific_platform/dialog_information_to_specific_platform.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platform Dialog Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Platform Dialog Tester'),
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
              ),
            );
          }),
    );
  }
}
```


## Use with sending pre-defined buttons

In the previous example, we let the component create a standard button, as it received none in particular. Now, in this new example, we are going to create two buttons and then forward them to the component and we will have a figure similar to the one shown in the sequence, which only brings up the screen with the dialog.

![The one of the reference test with the display of the dialog with instantiated buttons of `ActionsFlatButtonToAlertDialog`](/assets/readme/figura_02.png)

In order to get to the previous image, we need to add the following parameter to our `InformationAlertDialog()`.

```
buttons: [
  ActionsFlatButtonToAlertDialog(
    messageButton: 'Cancel',
  ),
  ActionsFlatButtonToAlertDialog(
    messageButton: 'Confirm',
  ),
],
```


## Checking the button pressed in the dialog

Using the code that we have already implemented, we will make a few changes to identify which button was pressed in the Dialog. See below. Note the `buttonPressed` declaration and that it is receiving the return of `showDialog ()` and, after that, just displaying the result, but what could be done for your logic here could be done.


```
onPressed: () async {
  var buttonPressed = await showDialog(...);
  ...
}
print('You pressed de button with "$buttonPressed" caption');
```

Use this component, adapt it or give me what you need to improve.