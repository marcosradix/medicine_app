import 'package:flutter/material.dart';
import 'package:madicine/credCardModel.dart';
import 'package:madicine/widgets/credCardPage.dart';
import 'package:madicine/widgets/showCredCard.dart';

import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: MyHomePage(title: 'Madicine'),
      title: 'Madicine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    ));
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  final CredCardModel credCardModel = CredCardModel(
      cardNumber: "4440 4444 4444 4444",
      expiryDate: "12/23",
      cardHolderName: "Marcos Ferreira Severino",
      cvvCode: "376",
      isCvvFocused: false);

  final CredCardModel credCardModel2 = CredCardModel(
      cardNumber: "",
      expiryDate: "",
      cardHolderName: "",
      cvvCode: "",
      isCvvFocused: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Get.to(CredCard(credCardModel: credCardModel2));
                },
                child: Icon(Icons.add_circle_outline),
              )),
        ],
      ),
      body: ShowCredCard(credCardModel: credCardModel),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Carregar',
        child: Icon(Icons.add),
      ),
    );
  }
}
