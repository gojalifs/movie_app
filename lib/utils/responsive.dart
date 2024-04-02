/* 
    The main size used here is based on 450px width of screen
 */

import 'package:flutter/material.dart';

double responsiveFontSize(BuildContext context, int mainSize) {
  var size = MediaQuery.of(context).size.width;
  if (size <= 400) {
    return mainSize * 0.67;
  } else {
    return mainSize.toDouble();
  }
}
