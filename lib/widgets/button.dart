
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:street_parking/utils/edit_controller.dart';

import '../utils/color.dart';

import '../utils/etc.dart';
import '../utils/frame.dart';


/// 로그인 버튼
class LoginButton extends StatelessWidget {
  LoginButton({required this.loginEdit, required this.context});

  final LoginTextEditingController loginEdit;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
        width: double.infinity,
        child: TextButton(
            style: TextButton.styleFrom(
                elevation: 5.0,
                backgroundColor: mainColor,
                padding: EdgeInsets.all(17.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0))),
            onPressed: () {
              //_checkLogin(context);
            },
            child: Text('로그인', textScaleFactor: 1.1,
                style: TextStyle(color: Colors.white))
        )
    );
  }
}
//
//   /// 로그인 체크
//   void _checkLogin(BuildContext context) async
//   {
//     /// 아이디, 비밀번호 입력란이 비어있다.
//     if (loginEdit.idController.text.isEmpty || loginEdit.passController.text.isEmpty)
//     {
//       CustomDialog.showMyDialog('로그인 확인!', '아이디 또는 패스워드가 비어 있습니다. 입력 후 다시 시도바랍니다.', context, false);
//     }
//
//     /// 로그인 시도
//     else {
//       try {
//          LoginModel loginModel = await client.dioLogin(loginEdit.toMap());
//
//         if(loginModel.message == 'Success'){
//           AutoLoginManager().authLogin(context, loginEdit.idController.text, loginEdit.passController.text, loginModel);
//         }
//         else if(loginModel.message == '로그인 실패'){
//           CustomDialog.showMyDialog('로그인 확인!', '아이디 또는 비밀번호를 확인 후 다시 시도바랍니다.', context, false);
//         }
//         else{
//           CustomDialog.showMyDialog('로그인 에러!', '서버 또는 네트워크가 불안정하여 로그인 할 수 없습니다.', context, false);
//         }
//
//       } catch (e) {
//         Etc.showSnackBar(e.toString().replaceFirst('Exception: ', ''), context);
//       }
//     }
//   }
// }
//
//
// /// 회원가입 버튼
// class SignButton extends StatelessWidget {
//
//   final SignEdit signEdit;
//   final BuildContext context;
//   final VoidCallback signMsgCallback; // 회원가입 완료 메시지 callback 함수
//
//   SignButton({required this.signEdit, required this.context, required this.signMsgCallback});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
//         width: double.infinity,
//         child: TextButton(
//             style: TextButton.styleFrom(
//                 elevation: 5.0,
//                 backgroundColor: mainColor,
//                 padding: EdgeInsets.all(17.0),
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
//             onPressed: ()
//             {
//               doSign();
//             },
//             child: Text('회원 가입', textScaleFactor: 1.1, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
//         )
//     );
//   }
//
//   void doSign() async{
//     if(checkValidate(context, signEdit)) {
//       DefaultStatus defaultStatus = await client.dioSign(signEdit.toMap());
//
//       if(defaultStatus.code == '200'){
//         Navigator.pop(context);
//         signMsgCallback();
//       }
//       else if(defaultStatus.code == 'ERR_DUPLICATED_ID'){
//         CustomDialog.showMyDialog('이메일 중복!', '이메일이 중복되었습니다. 확인 후 다시 시도바랍니다.', context, false);
//       }
//       else{
//         CustomDialog.showMyDialog('회원가입!', '서버 불안정으로 회원가입 할 수 없습니다.', context, false);
//       }
//     }
//   }
//
//   static bool checkValidate(BuildContext context, SignEdit signEdit)
//   {
//     if(
//     SignValidate().checkID(signEdit.idController.text, context)&&                // 아이디
//     SignValidate().checkPassword(signEdit.passController.text, context)&&        // 비밀번호
//     SignValidate().checkPassword2(signEdit.pass2Controller.text, context)&&      // 비밀번호 재입력
//     SignValidate().checkSamePassword(signEdit.passController.text,               // 비밀번호 일치여부
//         signEdit.pass2Controller.text, context)&&
//     SignValidate().checkGender(signEdit.gender, context)&&                       // 성별
//     SignValidate().checkDateOfBirth(signEdit.dateOfBirth, context)&&             // 생년월일
//     SignValidate().checkJobName(signEdit.jobName, context)){                     // 직무
//       return true; // 위 체크 내용이 true 경우
//     }
//     else
//       return false; // 위 체크 내용이 false 경우
//   }
// }
//
//
/// 이용약관 완료 버튼
class TermsButton extends StatelessWidget {
  final String btnName;
  final BuildContext context;
  final List<bool> agree;
  final VoidCallback signMsgCallback; // 회원가입 완료 메시지 callback 함수

  TermsButton({ required this.btnName, required this.context, required this.agree, required this.signMsgCallback});

  final bool isAgree = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 55,
        child: Padding(padding: EdgeInsets.all(4.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 2,
                  primary: mainColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
              onPressed: ()
              {
                if(agree[1] == false || agree[2] == false || agree[3] == false)
                {
                  Etc.showSnackBar('모두 동의 바랍니다.', context);
                }
                else{
                  Navigator.pop(context);
                 // Frame.doPagePush(context, SignUpPage(signMsgCallback: ()=> signMsgCallback()));
                }
              },
              child: Text(btnName, textScaleFactor: 1.1, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
        ));
  }
}
//
//
// /// 상담 메뉴 이동 버튼
// class MenuButton extends StatelessWidget {
//
//   final BuildContext context;
//   final Function onBackCallbackHomeUpdate;
//   MenuButton({required this.context, required this.onBackCallbackHomeUpdate});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 55,
//         width: double.infinity,
//         child: TextButton(
//             style: TextButton.styleFrom(
//                 elevation: 0.0,
//                 backgroundColor: mainColor,
//                 padding: EdgeInsets.all(17.0),
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0))),
//             onPressed: ()
//             {
//               if(Etc.checkDeadline()){
//                 _buildGuidePopup(context);
//               }
//               else{
//                 CustomDialog.showEndConsultationDialog(
//                     context,
//                     onPositive:() { Navigator.pop(context); });
//               }
//             },
//             child: Text('상담 메뉴 이동', textScaleFactor: 1.1, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
//         )
//     );
//   }
//
//   _buildGuidePopup(context) {
//     CustomDialog.popup(context,
//         child: Container(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(Icons.error, color: mainColor, size: 40),
//               Container(
//                 margin: EdgeInsets.only(top: 10),
//                 child: Text('챗봇 상담 안내', textScaleFactor: 1.1, style: TextStyle(fontWeight: FontWeight.w600, )),
//               ),
//               Container(
//                   margin: EdgeInsets.fromLTRB(10, 20, 20, 0),
//                   child: Text.rich(
//                     textAlign: TextAlign.center,
//                     TextSpan(
//                       children: <TextSpan>[
//                         TextSpan(text: '심리 상담 항목은 총 12개 항목이며,\n', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14)),
//                         TextSpan(text: '반드시!! 22년 12월 12일 23:59', style:  TextStyle(fontWeight: FontWeight.w600, color: Colors.redAccent, fontSize: 14)),
//                         TextSpan(text: '까지\n12개 모든 항목을 수행 하셔야합니다.\n', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14)),
//                         TextSpan(text: '이후 모든 상담이 종료됩니다.', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.redAccent, fontSize: 14)),
//                       ],
//                     ),
//                   )
//               ),
//
//               Container(
//                 height: 42,
//                 width:  290,
//                 margin: EdgeInsets.only(top: 25, bottom: 5),
//                 child: TextButton(
//                     style: TextButton.styleFrom(
//                         elevation: 5.0,
//                         backgroundColor: mainColor,
//                         shape: RoundedRectangleBorder(
//                             side: BorderSide(width: 1.0, color: mainColor),
//                             borderRadius: BorderRadius.circular(5.0))),
//                     onPressed: ()
//                     {
//                       Navigator.pop(context); // 현재 팝업
//                       Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) =>
//                           MenuPage())).then((_) { onBackCallbackHomeUpdate();});
//                     },
//                     child: Text('상담 진행 하기', textScaleFactor: 1.0, style: TextStyle(color: Colors.white))
//                 ),
//               ),
//             ],
//           ),
//         ), height: 400
//     );
//   }
// }
//
//
// /// 회원정보 변경 버튼
// class infoEditButton extends StatelessWidget {
//
//   final SignEdit signEdit;
//   final BuildContext context;
//   final VoidCallback editInfoMsgCallback; // 개인정보 수정 완료 메시지 callback 함수
//
//   infoEditButton({required this.signEdit, required this.context, required this.editInfoMsgCallback});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
//         width: double.infinity,
//         child: TextButton(
//             style: TextButton.styleFrom(
//                 elevation: 5.0,
//                 backgroundColor: mainColor,
//                 padding: EdgeInsets.all(17.0),
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
//             onPressed: ()
//             {
//               editInformation();
//             },
//             child: Text('변경 하기', textScaleFactor: 1.1, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
//         )
//     );
//   }
//
//   void editInformation() async{
//     if(checkValidate(context, signEdit)) {
//       DefaultOnlyStatus defaultOnlyStatus = await client.dioEditInfo(signEdit.toMapEditInfo());
//
//       if(defaultOnlyStatus.code == '200')
//       {
//         MySharedPreferences _saveData = MySharedPreferences();
//         _saveData.setStringData('gender', signEdit.gender.toString());
//
//         Authorization().gender = signEdit.gender.toString();
//
//         Navigator.pop(context);
//         editInfoMsgCallback();
//       }
//       else { // -1.. 등등 모든 예외
//         CustomDialog.showMyDialog('변경 실패!', '변경이 실패 되었습니다. 확인 후 다시 시도바랍니다.', context, false);
//       }
//     }
//   }
//
//   static bool checkValidate(BuildContext context, SignEdit signEdit)
//   {
//     if(SignValidate().checkDateOfBirth(signEdit.dateOfBirth, context) &&      // 생년월일
//        SignValidate().checkJobName(signEdit.jobName, context) &&              // 직무
//        SignValidate().checkGender(signEdit.gender, context))                  // 성별
//     {
//       return true; // 위 유저 정보 변경 SignEdit 체크 내용이 true 경우
//     }
//     else
//       return false; // 위 체크 내용이 false 경우
//   }
// }
//
//
// /// 비밀번호 변경 버튼
// class PwdChangeButton extends StatelessWidget {
//
//   final PasswordEdit passwordEdit;
//   final BuildContext context;
//   final VoidCallback editInfoCompleteMsg; // 비밀번호 변경 완료 메시지 callback
//
//   PwdChangeButton({required this.passwordEdit, required this.context, required this.editInfoCompleteMsg});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: const EdgeInsets.fromLTRB(0, 50, 0, 10),
//         width: double.infinity,
//         child: TextButton(
//             style: TextButton.styleFrom(
//                 elevation: 5.0,
//                 backgroundColor: mainColor,
//                 padding: EdgeInsets.all(17.0),
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
//             onPressed: ()
//             {
//               doEditPassword();
//             },
//             child: Text('비밀번호 변경', textScaleFactor: 1.1, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
//         )
//     );
//   }
//
//   void doEditPassword() async{
//     if(checkValidate(context, passwordEdit)) {
//       DefaultOnlyStatus defaultOnlyStatus = await client.dioEditPwd(passwordEdit.toMap(Authorization().userID));
//
//       if(defaultOnlyStatus.code == '200'){
//         editInfoCompleteMsg();
//         Frame.doPageAndRemoveUntil(context, LoginPage());
//       }
//       else {
//         CustomDialog.showMyDialog('비밀번호 변경 실패!', '비밀번호 변경이 실패했습니다. 다시 시도바랍니다.', context, false);
//       }
//     }
//   }
//
//
//   static bool checkValidate(BuildContext context, PasswordEdit passwordEdit)
//   {
//     if(PasswordValidate().checkBeforePassword(passwordEdit.beforePassController.text, Authorization().password, context)&&  // 현재 비밀번호 확인
//         PasswordValidate().checkPassword(passwordEdit.newPassController.text, context)&&                       // 새로운 비밀번호 재입력
//         PasswordValidate().checkPassword2(passwordEdit.newPass2Controller.text, context)&&                     // 새로운 비밀번호 재입력
//         PasswordValidate().checkSamePassword(passwordEdit.newPassController.text,                              // 비밀번호 일치여부
//             passwordEdit.newPass2Controller.text, context)
//     )
//      {
//        return true; // 위 체크 내용이 true 경우
//      }
//     else
//       return false; // 위 체크 내용이 false 경우
//   }
// }
//
//
// /// 아이디 찾기, 비밀번호 찾기
// class FindButton extends StatelessWidget {
//   final String btnName;
//   final TextEditingController controller;
//   final TextEditingController controller2;
//
//   FindButton({required this.btnName, required this.controller, required this.controller2});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: const EdgeInsets.fromLTRB(0, 40, 0, 10),
//         width: double.infinity,
//         child: TextButton(
//             style: TextButton.styleFrom(
//                 elevation: 5.0,
//                 backgroundColor: mainColor,
//                 padding: EdgeInsets.all(17.0),
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
//             onPressed: ()
//             {
//               print('찾기 버튼 클릭');
//             },
//             child: Text(btnName, textScaleFactor: 1.1, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
//         )
//     );
//   }
// }
//
// /// 직무 Dropdown Button
// class JobNameDropdownButton extends StatelessWidget {
//   final String jobName;
//   final Function(String? newValue) onChanged;
//
//   JobNameDropdownButton({required this.jobName, required this.onChanged});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
//           child: Text('직무',textScaleFactor: 0.94, style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold)),
//         ),
//         Container(
//           height: 48,
//           width: 600,
//           padding: EdgeInsets.symmetric(horizontal: 13),
//           decoration: BoxDecoration(
//             border: Border.all(color: textFieldBorderColor, width: 1.5),
//             borderRadius: BorderRadius.circular(5),
//           ),
//
//           child: DropdownButton(
//             isExpanded: true,
//             iconEnabledColor: Colors.grey,
//             style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
//             focusColor: Colors.black,
//             underline: Container(),
//             icon: Icon(Icons.keyboard_arrow_down),
//             hint: Text(jobName, textScaleFactor: 0.94, style: TextStyle(color: ConditionalColor.jobTextColor(jobName))),
//             items: jobNameList.map<DropdownMenuItem<String>>((String items) {
//               return DropdownMenuItem(value: items, child: Text(items));
//             }).toList(),
//             onChanged: (String? newValue)  => onChanged(newValue),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
//
