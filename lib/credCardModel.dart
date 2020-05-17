
class CredCardModel{

  String cardNumber;
  String expiryDate;
  String cardHolderName;
  String cvvCode;
  bool isCvvFocused;

 CredCardModel({this.cardNumber, this.expiryDate, this.cardHolderName, this.cvvCode, this.isCvvFocused:false});
}