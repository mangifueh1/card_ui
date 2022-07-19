import 'package:flutter/cupertino.dart';

class CardDetails {
  String balance;
  String number;
  Color firstColor;
  Color secondColor;
  String assetType;

  CardDetails(this.balance, this.number, this.firstColor, this.secondColor,
      this.assetType);
}

List<CardDetails> details = [
  CardDetails('\$15,872', '4209 **** **** 0210', const Color(0xff5811DF),
      const Color(0xff9232FD), 'mastercard.png'),
  CardDetails('\$98,581', '4209 **** **** 9834', const Color(0xff008bdb),
      const Color(0xff00BDFF), 'mastercard.png'),
  CardDetails('\$45,786', '4209 **** **** 3462', const Color(0xffff00AA),
      const Color(0xffDF4300), 'visa.png'),
];
