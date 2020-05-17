import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:get/get.dart';
import 'package:madicine/credCardModel.dart';

class CreditCardController extends GetController{
static CreditCardController get to => Get.find();
final CredCardModel credCardModel = CredCardModel(
      cardNumber: "",
      expiryDate: "",
      cardHolderName: "",
      cvvCode: "",
      isCvvFocused: false);

    void onCreditCardModelChange(CreditCardModel creditCardModel) {
      credCardModel.cardNumber = creditCardModel.cardNumber;
      credCardModel.expiryDate = creditCardModel.expiryDate;
      credCardModel.cardHolderName = creditCardModel.cardHolderName;
      credCardModel.cvvCode = creditCardModel.cvvCode;
      credCardModel.isCvvFocused = creditCardModel.isCvvFocused;
      update(this);
   
  }
}