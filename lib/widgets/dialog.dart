import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/color.dart';

class CustomDialog{

  /// 네트워크 연결 상태 다이얼로그
  static showNetworkDialog(String title, String text, BuildContext mainContext, Function onPressed) {
    return showDialog(
        context: mainContext,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title, textScaleFactor: 0.85, style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            content: Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 190,
                      child: Text(text, textAlign: TextAlign.center, textScaleFactor: 0.85)),
                ],
              ),
            ),
            contentPadding:EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            actionsAlignment: MainAxisAlignment.center,
            actions: <Widget>[
              Container(
                height: 40,
                width:  240,
                margin: EdgeInsets.only(bottom: 10),
                child: TextButton(
                    style: TextButton.styleFrom(
                        elevation: 5.0,
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.0, color: mainColor),
                            borderRadius: BorderRadius.circular(5.0))),
                    onPressed: ()
                    {
                      onPressed();
                    },
                    child: Text('확인', textScaleFactor: 1.0, style: TextStyle(color: Colors.white))
                ),
              ),

            ],
          );
        });
  }


  // /// 네트워크 연결 상태 다이얼로그
  // static showDioDialog(String title, String text, BuildContext mainContext,
  //     {required Function onPositive, required Function onNegative}) {
  //   return showDialog(
  //       context: mainContext,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  //           title: Center(
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Text(title, textScaleFactor: 0.85, style: TextStyle(fontWeight: FontWeight.bold)),
  //               ],
  //             ),
  //           ),
  //           content: Padding(
  //             padding: const EdgeInsets.fromLTRB(20, 12, 20, 10),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Container(
  //                     width: 190,
  //                     child: Text(text, textAlign: TextAlign.center, textScaleFactor: 0.85)),
  //               ],
  //             ),
  //           ),
  //           contentPadding:EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
  //           actionsAlignment: MainAxisAlignment.center,
  //           actions: <Widget>[
  //
  //
  //             Container(
  //               width: 120,
  //               height: 40,
  //               margin: EdgeInsets.only(bottom: 10),
  //               child: TextButton(
  //                   style: TextButton.styleFrom(
  //                       elevation: 3.0,
  //                       backgroundColor: Colors.white,
  //                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
  //                   onPressed: () => onNegative(),
  //                   child: Text('나가기', textScaleFactor: 1.0, style: TextStyle(color: Colors.grey.shade600))
  //               ),
  //             ),
  //
  //             Container(
  //               height: 40,
  //               width:  120,
  //               margin: EdgeInsets.only(bottom: 10),
  //               child: TextButton(
  //                   style: TextButton.styleFrom(
  //                       elevation: 5.0,
  //                       backgroundColor: mainColor,
  //                       shape: RoundedRectangleBorder(
  //                           side: BorderSide(width: 1.0, color: mainColor),
  //                           borderRadius: BorderRadius.circular(5.0))),
  //                   onPressed: () => onPositive(),
  //                   child: Text('재시도', textScaleFactor: 1.0, style: TextStyle(color: Colors.white))
  //               ),
  //             ),
  //
  //           ],
  //         );
  //       });
  // }
  // static showMyDialog(String title, String text, BuildContext mainContext, bool isCancelBtn) {
  //   return showDialog(
  //       context: mainContext,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  //           title: Center(
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Text(title, textScaleFactor: 0.85, style: TextStyle(fontWeight: FontWeight.bold)),
  //               ],
  //             ),
  //           ),
  //           content: Padding(
  //             padding: const EdgeInsets.fromLTRB(20, 12, 20, 10),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Container(
  //                     width: 190,
  //                     child: Text(text, textAlign: TextAlign.center, textScaleFactor: 0.85)),
  //               ],
  //             ),
  //           ),
  //           contentPadding:EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
  //           actionsAlignment: MainAxisAlignment.center,
  //           actions: <Widget>[
  //             Visibility(
  //               visible: isCancelBtn,
  //               child: Container(
  //                 width: 120,
  //                 height: 40,
  //                 margin: EdgeInsets.only(bottom: 10),
  //                 child: TextButton(
  //                     style: TextButton.styleFrom(
  //                         elevation: 3.0,
  //                         backgroundColor: Colors.white,
  //                         shape: RoundedRectangleBorder(
  //                            // side: BorderSide(width: 1.0, color: Colors.grey.shade100),
  //                             borderRadius: BorderRadius.circular(5.0))),
  //                     onPressed: ()
  //                     {
  //                       Navigator.pop(context);
  //                     },
  //                     child: Text('취소', textScaleFactor: 1.0, style: TextStyle(color: Colors.grey.shade600))
  //                 ),
  //               ),
  //             ),
  //
  //             Container(
  //               height: 40,
  //               width: isCancelBtn ? 120 : 240,
  //               margin: EdgeInsets.only(bottom: 10),
  //               child: TextButton(
  //                   style: TextButton.styleFrom(
  //                       elevation: 5.0,
  //                       backgroundColor: mainColor,
  //                       shape: RoundedRectangleBorder(
  //                           side: BorderSide(width: 1.0, color: mainColor),
  //                           borderRadius: BorderRadius.circular(5.0))),
  //                   onPressed: ()
  //                   {
  //                     Navigator.pop(context);
  //                   },
  //                   child: Text('확인', textScaleFactor: 1.0, style: TextStyle(color: Colors.white))
  //               ),
  //             ),
  //
  //           ],
  //         );
  //       });
  // }



  // /// 다이얼 로그
  // static showActionDialog(String title, String text, BuildContext mainContext) {
  //   return showDialog(
  //       context: mainContext,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  //           title: Center(
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Text(title, textScaleFactor: 0.85, style: TextStyle(fontWeight: FontWeight.bold)),
  //               ],
  //             ),
  //           ),
  //           content: Padding(
  //             padding: const EdgeInsets.fromLTRB(20, 12, 20, 10),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Container(
  //                     width: 190,
  //                     child: Text(text, textAlign: TextAlign.center, textScaleFactor: 0.85)),
  //               ],
  //             ),
  //           ),
  //           contentPadding:EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
  //           actionsAlignment: MainAxisAlignment.center,
  //           actions: <Widget>[
  //             Container(
  //               width: 120,
  //               height: 40,
  //               margin: EdgeInsets.only(bottom: 10),
  //               child: TextButton(
  //                   style: TextButton.styleFrom(
  //                       elevation: 3.0,
  //                       backgroundColor: Colors.white,
  //                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
  //                   onPressed: ()
  //                   {
  //                     Navigator.pop(context);
  //                   },
  //                   child: Text('취소', textScaleFactor: 1.0, style: TextStyle(color: Colors.grey.shade600))
  //               ),
  //             ),
  //
  //             Container(
  //               height: 40,
  //               width: 120,
  //               margin: EdgeInsets.only(bottom: 10),
  //               child: TextButton(
  //                   style: TextButton.styleFrom(
  //                       elevation: 5.0,
  //                       backgroundColor: mainColor,
  //                       shape: RoundedRectangleBorder(
  //                           side: BorderSide(width: 1.0, color: mainColor),
  //                           borderRadius: BorderRadius.circular(5.0))),
  //                   onPressed: () async
  //                   {
  //                     /// 회원 탈퇴
  //                     if(title == '회원 탈퇴!')
  //                     {
  //                       final toMap = {'userID' : Authorization().userID};
  //                       DefaultOnlyStatus defaultOnlyStatus =  await client.dioUserDelete(toMap);
  //
  //                       if(defaultOnlyStatus.code == '200') {
  //                         Etc.showSnackBar('정상적으로 탈퇴되었습니다.', mainContext);
  //                         Frame.doPageAndRemoveUntil(context, LoginPage());
  //                       }
  //
  //                       else {
  //                         CustomDialog.showMyDialog('탈퇴 실패!', '탈퇴 실패했습니다. 다시 시도바랍니다.', context, false);
  //                       }
  //
  //                     }
  //
  //                     /// 로그 아웃
  //                     else {
  //                       var pref = await SharedPreferences.getInstance();
  //                       pref.clear();
  //                       Authorization().clear();
  //
  //                       Frame.doPageAndRemoveUntil(context, LoginPage());
  //                     }
  //                   },
  //                   child: Text('확인', textScaleFactor: 1.0, style: TextStyle(color: Colors.white))
  //               ),
  //             ),
  //
  //           ],
  //         );
  //       });
  // }



  // /// 상담 메뉴 상태 다이얼로그
  // /// MenuPage
  // static showMenuDialog(BuildContext mainContext,
  //     {required Function onPositive, required Function onNegative, required Widget contentWidget, required double height}) {
  //   return showDialog(
  //       context: mainContext,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  //           content: Container(
  //             padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
  //             height: height,
  //             width: 300,
  //             child: Column(
  //                 children: [
  //                   Icon(Icons.error, color: mainColor, size: 40),
  //                   Container(
  //                     margin: EdgeInsets.only(top: 10),
  //                     child: Text('챗봇 상담 안내', textScaleFactor: 1.1, style: TextStyle(fontWeight: FontWeight.w600)),
  //                   ),
  //                   contentWidget,
  //
  //             ]),
  //           ),
  //           contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
  //           actionsAlignment: MainAxisAlignment.center,
  //           actions: <Widget>[
  //             Container(
  //               width: 120,
  //               height: 40,
  //               margin: EdgeInsets.only(bottom: 10),
  //               child: TextButton(
  //                   style: TextButton.styleFrom(
  //                       elevation: 3.0,
  //                       backgroundColor: Colors.white,
  //                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
  //                   onPressed: () => onNegative(),
  //                   child: Text('취소', textScaleFactor: 1.0, style: TextStyle(color: Colors.grey.shade600))
  //               ),
  //             ),
  //
  //             Container(
  //               height: 40,
  //               width:  120,
  //               margin: EdgeInsets.only(bottom: 10),
  //               child: TextButton(
  //                   style: TextButton.styleFrom(
  //                       elevation: 5.0,
  //                       backgroundColor: mainColor,
  //                       shape: RoundedRectangleBorder(
  //                           side: BorderSide(width: 1.0, color: mainColor),
  //                           borderRadius: BorderRadius.circular(5.0))),
  //                   onPressed: () => onPositive(),
  //                   child: Text('진행', textScaleFactor: 1.0, style: TextStyle(color: Colors.white))
  //               ),
  //             ),
  //
  //           ],
  //         );
  //       });
  // }
  //
  //
  // /// 상담 종료 팝업
  // /// HomePage, MenuPage
  // static showEndConsultationDialog(BuildContext mainContext, {required Function onPositive}) {
  //   return showDialog(
  //       context: mainContext,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  //           content: Container(
  //             padding: EdgeInsets.only(top: 10),
  //             height: 200,
  //             width: 300,
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Icon(Icons.error, color: mainColor, size: 40),
  //                   Container(
  //                     margin: EdgeInsets.only(top: 10),
  //                     child: Text('챗봇 상담 종료 안내', textScaleFactor: 1.1, style: TextStyle(fontWeight: FontWeight.w600)),
  //                   ),
  //                   Container(
  //                       margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
  //                       child: Text.rich(
  //                         textAlign: TextAlign.center,
  //                         TextSpan(
  //                           children: <TextSpan>
  //                           [
  //                             TextSpan(text: '상담 시간', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blueAccent, fontSize: 14)),
  //                             TextSpan(text: '이 지났습니다.\n', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14)),
  //                             TextSpan(text: '더 이상 상담을 진행 할 수 없습니다.\n', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14)),
  //                             TextSpan(text: '감사합니다.\n', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14)),
  //                           ],
  //                         ),
  //                       )
  //                   ),
  //
  //                 ]),
  //           ),
  //           contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
  //           actionsAlignment: MainAxisAlignment.center,
  //           actions: <Widget>[
  //             Container(
  //               height: 40,
  //               width:  270,
  //               margin: EdgeInsets.only(bottom: 10),
  //               child: TextButton(
  //                   style: TextButton.styleFrom(
  //                       elevation: 5.0,
  //                       backgroundColor: mainColor,
  //                       shape: RoundedRectangleBorder(
  //                           side: BorderSide(width: 1.0, color: mainColor),
  //                           borderRadius: BorderRadius.circular(5.0))),
  //                   onPressed: () => onPositive(),
  //                   child: Text('확인', textScaleFactor: 1.0, style: TextStyle(color: Colors.white))
  //               ),
  //             ),
  //
  //           ],
  //         );
  //       });
  // }
  //
  //
  // /// 팝업 형태로 표시
  // static popup(context, {required Widget child, double width = 300, required double height,  double padding = 10,
  //   bool bBackgroundTapPop = true, Color color = Colors.white, double round = 15.0}) async {
  //
  //   return showDialog(
  //       barrierDismissible: false,
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(round))),
  //           contentPadding: EdgeInsets.all(padding),
  //           content: Container(
  //               width: width,
  //               //height:  // 호출 하는 곳의 column에서 mainAxisSize: MainAxisSize.min 적용 필요
  //               child: child
  //           ),
  //         );
  //       }
  //   );
  // }
  //
  // /// 마무리 화면에서 회원 탈퇴 안내
  // static showEndGuideUserDeleteDialog(String title, String text, BuildContext mainContext) {
  //   return showDialog(
  //       context: mainContext,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  //           title: Center(
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Text(title, textScaleFactor: 0.85, style: TextStyle(fontWeight: FontWeight.bold)),
  //               ],
  //             ),
  //           ),
  //           content: Padding(
  //             padding: const EdgeInsets.fromLTRB(20, 12, 20, 10),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Container(
  //                     width: 190,
  //                     child: Text(text, textAlign: TextAlign.center, textScaleFactor: 0.85)),
  //               ],
  //             ),
  //           ),
  //           contentPadding:EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
  //           actionsAlignment: MainAxisAlignment.center,
  //           actions: <Widget>[
  //             Container(
  //               width: 120,
  //               height: 40,
  //               margin: EdgeInsets.only(bottom: 10),
  //               child: TextButton(
  //                   style: TextButton.styleFrom(
  //                       elevation: 3.0,
  //                       backgroundColor: Colors.white,
  //                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
  //                   onPressed: ()
  //                   {
  //                     Navigator.pop(context);
  //                   },
  //                   child: Text('취소', textScaleFactor: 1.0, style: TextStyle(color: Colors.grey.shade600))
  //               ),
  //             ),
  //
  //             Container(
  //               height: 40,
  //               width: 120,
  //               margin: EdgeInsets.only(bottom: 10),
  //               child: TextButton(
  //                   style: TextButton.styleFrom(
  //                       elevation: 5.0,
  //                       backgroundColor: mainColor,
  //                       shape: RoundedRectangleBorder(
  //                           side: BorderSide(width: 1.0, color: mainColor),
  //                           borderRadius: BorderRadius.circular(5.0))),
  //                   onPressed: () async
  //                   {
  //                     /// 회원 탈퇴
  //                       final toMap = {'userID' : Authorization().userID};
  //                       DefaultOnlyStatus defaultOnlyStatus =  await client.dioUserDelete(toMap);
  //
  //                       if(defaultOnlyStatus.code == '200') {
  //                         Etc.showSnackBar('정상적으로 탈퇴되었습니다.', mainContext);
  //                         Frame.doPageAndRemoveUntil(context, LoginPage());
  //                       }
  //
  //                       else {
  //                         CustomDialog.showMyDialog('탈퇴 실패!', '탈퇴 실패했습니다. 다시 시도바랍니다.', context, false);
  //                       }
  //
  //                   },
  //                   child: Text('확인', textScaleFactor: 1.0, style: TextStyle(color: Colors.white))
  //               ),
  //             ),
  //
  //           ],
  //         );
  //       });
  // }
  //
  //
  // /// 문의하기
  // static showInquiryDialog(BuildContext mainContext, {required Function onPositive}) {
  //   return showDialog(
  //       context: mainContext,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  //           content: Container(
  //             padding: EdgeInsets.only(top: 10),
  //             height: 250,
  //             width: 300,
  //             child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Icon(Icons.call, color: mainColor, size: 40),
  //                   Container(
  //                     margin: EdgeInsets.only(top: 10),
  //                     child: Text('휴스테이션 문의 안내', textScaleFactor: 1.1, style: TextStyle(fontWeight: FontWeight.w600)),
  //                   ),
  //                   Container(
  //                       margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
  //                       child:
  //                       Column(
  //                         children: [
  //                           Frame.myText(text: '010-8215-0997', fontSize: 1.5, fontWeight: FontWeight.w800, color: mainColor),
  //                           SizedBox(height: 20),
  //                           Row(
  //                             mainAxisAlignment: MainAxisAlignment.center,
  //                             children: [
  //                               Card(
  //                                   color: guideBackGroundColor,
  //                                   child: Padding(
  //                                     padding: const EdgeInsets.all(2.0),
  //                                     child: Text('평일', textScaleFactor: 1.0, style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey)),
  //                                   )),
  //                               Frame.myText(text: ' 오전10시~오후 5시', fontSize: 0.95, fontWeight: FontWeight.w600, color: Colors.grey.shade600),
  //                             ],
  //                           ),
  //                           Row(
  //                             mainAxisAlignment: MainAxisAlignment.center,
  //                             children: [
  //                               Card(
  //                                   color: guideBackGroundColor ,
  //                                   child: Padding(
  //                                     padding: const EdgeInsets.all(2.0),
  //                                     child: Text('휴무', textScaleFactor: 1.0, style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey)),
  //                                   )),
  //                               Frame.myText(text: ' 토요일/일요일/공휴일', fontSize: 0.95, fontWeight: FontWeight.w600, color: Colors.grey.shade600),
  //                             ],
  //                           ),
  //                         ],
  //                       )
  //                   ),
  //
  //                 ]),
  //           ),
  //           contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
  //           actionsAlignment: MainAxisAlignment.center,
  //           actions: <Widget>[
  //             Container(
  //               height: 40,
  //               width:  270,
  //               margin: EdgeInsets.only(bottom: 10),
  //               child: TextButton(
  //                   style: TextButton.styleFrom(
  //                       elevation: 5.0,
  //                       backgroundColor: mainColor,
  //                       shape: RoundedRectangleBorder(
  //                           side: BorderSide(width: 1.0, color: mainColor),
  //                           borderRadius: BorderRadius.circular(5.0))),
  //                   onPressed: () => onPositive(),
  //                   child: Text('확인', textScaleFactor: 1.0, style: TextStyle(color: Colors.white))
  //               ),
  //             ),
  //
  //           ],
  //         );
  //       });
  // }
}


