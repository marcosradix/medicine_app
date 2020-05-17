import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_credit_card/form_config.dart';

import '../credCardModel.dart';


class ShowCredCard extends StatelessWidget {

final CredCardModel credCardModel;

ShowCredCard({this.credCardModel}) {
this.credCardModel.cardNumber = credCardModel.cardNumber;
this.credCardModel.expiryDate = credCardModel.expiryDate;
this.credCardModel.cardHolderName = credCardModel.cardHolderName;
this.credCardModel.cvvCode = credCardModel.cvvCode;
this.credCardModel.isCvvFocused = credCardModel.isCvvFocused;
}

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartão salvo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CreditCardWidget(
                formConfig: const FormConfig(),
                cardNumber: credCardModel.cardNumber,
                expiryDate: credCardModel.expiryDate,
                cardHolderName: credCardModel.cardHolderName,
                cvvCode: credCardModel.cvvCode,
                showBackView: credCardModel.isCvvFocused,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
