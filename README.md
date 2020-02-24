# dialog_information_to_specific_platform

Este pacote refere-se à widgets especializados de [AlertDialog](https://api.flutter.dev/flutter/material/AlertDialog-class.html) e [CupertinoAlertDialog](https://api.flutter.dev/flutter/cupertino/CupertinoAlertDialog-class.html). Você precisa apenas invocar o widget deste pacote e, de acordo à plataforma em que sua aplicação esteja sendo executada, será renderizado um Material Dialog ou Cupertino Dialog.

## Getting Started

Para a utilização deste pacote, antes de tudo, é preciso configurar o pubspec.yaml de acordo ao apresentado à seguir.

```
dependencies:
  dialog_information_to_specific_platform: <última-versão>
```

Após a configuração, é preciso executar flutter packages get, na console/terminal ou em seu IDE.

Em seu Widget é necessário importar os pacotes a seguir, onde o segundo será necessário apenas para a criação dos botões para a Dialog, mas é possível você enviar um List com seus Widgets.

```
import 'package:dialog_information_to_specific_platform/dialog_information_to_specific_platform.dart';
import 'package:dialog_information_to_specific_platform/flat_buttons/actions_flatbutton_to_alert_dialog.dart';
```


## Uso básico

Como teste para a visualização de uma dialog, teremos inicialmente a imagem a seguir, exibindo um Scaffold com um FAB que, ao acionado, exibirá a Dialog.

![A visão do teste de referência com um FAB para exibir a dialog e a visão do teste de referência com a exibição do dialog](/assets/readme/figura_01.png)

Para que possamos chegar as imagens anteriores, precisamos implementar o widget apresentado na sequência.

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


## Uso com envio de botões pré-definidos

No exemplo anterior, deixamos o componente criar um botão padrão, pois ele não recebeu nenhum em especial. Agora, neste novo exemplo, vamos criar dois botões e então encaminhá-los ao componente e teremos uma figura semelhante a apresentada na sequência, que traz apenas a tela com o dialog.

![A do teste de referência com a exibição do dialog com botões instanciados de `ActionsFlatButtonToAlertDialog`](/assets/readme/figura_02.png)

Para que possamos chegar as imagens anteriores, precisamos implementar o widget apresentado na sequência.
