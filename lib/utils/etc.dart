import 'package:flutter/material.dart';
import '../main.dart';
import 'color.dart';
import 'package:intl/intl.dart';

DateTime globalDataTime = DateTime(2022, 12, 25, 23, 59, 0, 0 ,0);

class Etc{

  /// 스낵바
  static showSnackBar(String meg, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            duration: Duration(milliseconds: 1500),
            behavior: SnackBarBehavior.floating,
            backgroundColor: mainColor,

            content: Text(meg, textScaleFactor: 0.9),
            ));
    }


  /// 가로 라인 줄
  static solidLine(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 1.0,
        color: Colors.grey[350],
      ),
    );
  }


  /// 세로 라인 줄
  static solidLineVertical(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Container(
        width: 1.5,
        height: 10,
        color: Colors.grey,
      ),
    );
  }

  static solidLineSetting(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 1.0,
        color: Colors.grey[100],
      ),
    );
  }

    
  /// 날짜 ' '기준으로 자르기
  static String  dateParsing(String value) {
    int targetNum = value.indexOf(' ');

    String date = value.substring(0, targetNum);
    String time = value.substring(targetNum, value.length);

    String sum = '$date\n$time';
    return sum;
  }


  /// chart x축 날짜 format(MM/dd)
  static String setDateTime(int duration) {
    final now = DateTime.now();
    final returnDate = now.subtract(Duration(days:duration));

    return DateFormat('MM/dd').format(returnDate);
  }

  static String setHomeDateTime(DateTime dateTime) {

    return DateFormat('yy년 MM월 dd일 HH:mm').format(dateTime);
  }

  /// List<int> to String('A,B,C...')
  static String intListToString(List<int> list){
    return list.map((item) => item)
        .toList()
        .join(',');
  }

  /// map() print
  static void getValuesFromMap(Map map) {

    // Get all values
    print('\n-----------------------');
    print('Map Get values:');
    map.entries.forEach((entry){
      mLog.d('${entry.key} : ${entry.value}');
    });
    print('-----------------------\n');
  }

  /// font size fixation
  static MediaQueryData getScaleFontSize(BuildContext context, {double fontSize = 1.0}){
    final mqData = MediaQuery.of(context);
    return mqData.copyWith(textScaleFactor: fontSize);
  }


  /// 홈 화면에 상담진행률에 따른 이미지 설정
  static String setProgressImage(int allProgress) {
    if(allProgress == 0){
      return 'images/progress_0.png';
    }
    else if(allProgress <= 15){
      return 'images/progress_10.png';
    }
    else if(allProgress <= 25){
      return 'images/progress_20.png';
    }
    else if(allProgress <= 35){
      return 'images/progress_30.png';
    }
    else if(allProgress <= 45){
      return 'images/progress_40.png';
    }
    else if(allProgress <= 55){
      return 'images/progress_50.png';
    }
    else if(allProgress <= 65){
      return 'images/progress_60.png';
    }
    else if(allProgress <= 75){
      return 'images/progress_70.png';
    }
    else if(allProgress <= 85){
      return 'images/progress_80.png';
    }
    else if(allProgress <= 95){
      return 'images/progress_90.png';
    }
    else if(allProgress == 100){
      return 'images/progress_100.png';
    }else{
      return 'images/progress_0.png';
    }

  }

  /// 상담메뉴 사용할 수 있는 시간 설정
  /// 데드라인 안쪽이면 true
  /// 데드라인을 넘으면 false
  static bool checkDeadline() {
    final now = DateTime.now();
    final deadline = DateTime(2022, 12, 25, 23, 59, 0, 0 ,0);
    mLog.d('Deadline ${!deadline.isBefore(now)}');
    return !deadline.isBefore(now);
  }
}

