# dialog_information_to_specific_platform

Este pacote refere-se à widgets especializados de [online documentation](https://api.flutter.dev/flutter/material/AlertDialog-class.html) e [online documentation](https://api.flutter.dev/flutter/cupertino/CupertinoAlertDialog-class.html). Você precisa apenas invocar o widget deste pacote e, de acordo à plataforma em que sua aplicação esteja sendo executada, será renderizado um Material Dialog ou Cupertino Dialog.

## Getting Started

Para a utilização deste pacote, antes de tudo, é preciso configurar o pubspec.yaml de acordo ao apresentado à seguir.

dependencies:
  dialog_information_to_specific_platform: <última-versão>

Após a configuração, é preciso executar flutter packages get, na console/terminal ou em seu IDE.

Em seu Widget é necessário importar os pacotes a seguir, onde o segundo será necessário apenas para a criação dos botões para a Dialog, mas é possível você enviar um List com seus Widgets.

>import 'package:dialog_information_to_specific_platform/dialog_information_to_specific_platform.dart';
>import 'package:dialog_information_to_specific_platform/flat_buttons/actions_flatbutton_to_alert_dialog.dart';


## Uso básico

![A visão do teste de referência com um FAB para exibir a dialog](/assets/readme/figura_01.png)


