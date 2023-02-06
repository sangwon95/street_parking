
import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/etc.dart';

class LoginTextField extends StatelessWidget {

  final IconData iconData;
  final String hint;
  final String type;
  final TextEditingController controller;

  LoginTextField({required this.iconData, required this.hint, required this.controller, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        height: 60.0,
        child: MediaQuery(
          data: Etc.getScaleFontSize(context, fontSize: 0.75),
          child: TextField(
            autofocus: false,
            obscureText:type == 'pass'? true : false,
            controller: controller,
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                fillColor: mainColor,
                border: OutlineInputBorder(borderRadius: const BorderRadius.all(const Radius.circular(5.0))),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: textFieldBorderColor, width: 1.5)),
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(iconData, color: mainColor),
                hintText: hint,
                hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)
            ),
          ),
        )
    );
  }
}

// ignore: must_be_immutable
class SignTextField extends StatelessWidget {

  final String hint;
  final String type;
  final String headText;
  final TextEditingController controller;

  SignTextField({required this.hint, required this.controller, required this.type, required this.headText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Text('✓ $headText', textScaleFactor: 1.0, style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold)),
        ),

        Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            child: MediaQuery(
              data: Etc.getScaleFontSize(context, fontSize: 0.9),
              child: TextField(
                enabled: type == 'birth' ? false : true,
                autofocus: false,
                obscureText: type == 'pass'? true : false,
                controller: controller,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border :OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2.0)),
                    contentPadding: EdgeInsets.only(left: 12, top: 15),
                    fillColor: Colors.red,
                    hoverColor: mainColor,
                    hintText: hint,
                    hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400)
                ),
              ),
            )
        )
      ],
    );
  }
}

// ignore: must_be_immutable
// class DateBirthTextField extends StatelessWidget {
//
//   final String headText;
//   final String text;
//   final Function(DateTime) updateDateBirth;
//
//   const DateBirthTextField({super.key,
//     required this.headText, required this.text, required this.updateDateBirth});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children:
//       [
//         Padding(
//           padding: const EdgeInsets.fromLTRB(0, 15, 0, 8),
//           child: Text(headText, textScaleFactor: 0.94,
//               style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold)),
//         ),
//
//         InkWell(
//           onTap: (){
//             FocusScope.of(context).unfocus();  // 키보드 내리기
//
//             /// 생년월일 입력 Picker
//             showModalBottomSheet(
//                 isScrollControlled: true,
//                 context: context,
//                 builder: (BuildContext context){
//                   return StatefulBuilder(
//                       builder: (BuildContext context, sheetSetState)
//                       {
//                         return DateBirthBottomSheet(updateDateBirth: (dateOfBirth) => updateDateBirth(dateOfBirth));
//                       }
//                   );
//                 }
//             );
//           },
//           child: Container(
//               height: 48.0,
//               alignment: Alignment.centerLeft,
//               decoration: BoxDecoration(
//                 border: Border.all(color: textFieldBorderColor, width: 1.5),
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 13),
//                 child: Frame.myText(text: text, color: text == '생년월일을 입력해주세요.' ? Colors.grey : Colors.black, fontWeight: FontWeight.w400, fontSize: 0.85),
//               )
//           ),
//         )
//       ],
//     );
//   }
// }


/// Password custom TextFiled Widget
/// This widget is a widget that can check if the password matches.
class PwdTextFiled extends StatelessWidget {
  final String headText;
  final String hint;

  /// [controller] listener registration is required to
  /// change the text widget at the bottom.
  /// ex) controller.addListener(_onChangedFunction)
  final TextEditingController controller;

  /// [true] when there is bottom text widget
  /// [false] when there is not bottom text widget
  final bool isViewPoint;

  /// [true] when Passwords match.
  /// [false] when Passwords do not match.
  final bool isSame;

  PwdTextFiled({
    required this.headText,
    required this.hint,
    required this.isViewPoint,
    required this.controller,
    required this.isSame
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Text(headText, textScaleFactor: 1.0,
              style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold)),
        ),

        Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            child: MediaQuery(
                data: Etc.getScaleFontSize(context, fontSize: 0.75),
                child: TextField(
                  autofocus: false,
                  obscureText: true,
                  controller: controller,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border:  OutlineInputBorder(borderRadius: const BorderRadius.all(const Radius.circular(5.0))),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: textFieldBorderColor, width: 1.5)),
                      contentPadding: EdgeInsets.only(left: 12, top: 15),
                      hoverColor: mainColor,
                      hintText: hint,
                      hintStyle: TextStyle(color: Colors.grey)),
                ))
        ),

        /// Bottom text widget
        Visibility(
            visible: isViewPoint,
            child: Container(
                height: 35,
                padding: EdgeInsets.only(left: 5),
                child: Row(
                    children:
                    [
                      Icon(
                          isSame ? Icons.check_circle_outline : Icons.error_outline_sharp,
                          size: 20.0,
                          color: isSame ? Colors.lightBlue :  Colors.red),
                      Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Text(isSame ? '비밀번호가 일치합니다.' : '위 비밀번호와 다릅니다.', textScaleFactor: 0.9,
                              style: TextStyle(color: isSame ? Colors.lightBlue :  Colors.red, fontWeight: FontWeight.w600)))
                    ]
                ))
        ),

      ],
    );
  }
}

