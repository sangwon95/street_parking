import 'package:flutter/material.dart';

final mainColor            = Color(0xff3ea391);
final guideBackGroundColor = Color(0xfff3f5fd);
final homeBackgroundColor  = Color(0xfff4f4f9);

final backgroundColor      = Color(0xffeff1f8);
final messageBalloonColor  = Color(0xFFF8F5F5);
final textFieldBorderColor = Color(0xFFE5E5E5);

final sleepChartColor = Color(0xFF9BA3EA);
final stepChartColor = Color(0xFFEFC568);



class ConditionalColor{

  static Color jobTextColor (String selectedJobName){
    return selectedJobName == '직무를 선택해주세요.' ? Colors.grey : Colors.black;
  }

}
