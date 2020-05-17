import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_credit_card/form_config.dart';
import 'package:get/get.dart';
import 'package:madicine/controller/credit_card_controller.dart';
import '../credCardModel.dart';

class CredCard extends StatelessWidget {
  final CredCardModel credCardModel;

  CredCard({this.credCardModel}) {
    this.credCardModel.cardNumber = credCardModel.cardNumber;
    this.credCardModel.expiryDate = credCardModel.expiryDate;
    this.credCardModel.cardHolderName = credCardModel.cardHolderName;
    this.credCardModel.cvvCode = credCardModel.cvvCode;
    this.credCardModel.isCvvFocused = credCardModel.isCvvFocused;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Madicine',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
          title: Text("Adicionar cartão"),
        ),
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              GetBuilder<CreditCardController>(
                init: CreditCardController(),
                builder: (_) {
                  return CreditCardWidget(
                    cardNumber: _.credCardModel.cardNumber,
                    expiryDate: _.credCardModel.expiryDate,
                    cardHolderName: _.credCardModel.cardHolderName,
                    cvvCode: _.credCardModel.cvvCode,
                    showBackView: _.credCardModel.isCvvFocused,
                    formConfig: FormConfig(
                      cardHolderNameLabel: 'Nome do Titular',
                      expiryDateLabelHintText: 'MÊS/ANO'
                    ),
                  );
                }
              ),
              Expanded(
                child: SingleChildScrollView(
                child: GetBuilder<CreditCardController>(
                init: CreditCardController(),
                builder: (_) {
                  return CreditCardForm(
                        formConfig: FormConfig(
                          cardHolderNameLabel: 'Nome do Titular',
                          cardNumberLabel: 'Número do Cartão',
                          cvvCodeLabel: 'Código de Segurança',
                          expiryDateLabel: 'Data de expiração',
                          expiryDateLabelHintText: 'MÊS/ANO',
                        ),
                        cardNumber: _.credCardModel.cardNumber,
                        onCreditCardModelChange: _.onCreditCardModelChange,
                      );
                    }
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
