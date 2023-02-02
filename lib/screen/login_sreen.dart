
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/edit_controller.dart';
import '../utils/etc.dart';
import '../utils/frame.dart';
import '../utils/network_connectivity.dart';
import '../widgets/bottom_sheet.dart';
import '../widgets/button.dart';
import '../widgets/dialog.dart';
import '../widgets/text_field.dart';


/// 로그인 화면
class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  /// Login TextEditingController
  final  _loginTEC = LoginTextEditingController();

  @override
  Widget build(BuildContext context) {

    /// 네트워크 연결 상태 확인
    NetWorkConnectivity(context: context);

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus(); // 키보드 내리기
            },
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
                [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: LoginTextField(
                          iconData: Icons.account_box,
                          hint: '이메일를 입력해주세요.',
                          controller: _loginTEC.idController,
                          type: 'id')
                  ),

                  /// 비밀번호 입력
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: LoginTextField(
                          iconData: Icons.vpn_key,
                          hint: '비밀번호를 입력해주세요.',
                          controller: _loginTEC.passController,
                          type: 'pass')
                  ),

                  /// 로그인 버튼
                  LoginButton(loginEdit: _loginTEC, context: context),

                  /// 회원가입 Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Container(
                          child: InkWell(
                              onTap: ()
                              {
                                // CustomDialog.showInquiryDialog(
                                //     context,
                                //     onPositive: (){
                                //       Navigator.pop(context);
                                //     }
                                // );
                              },
                              child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Frame.myText(text: '문의 하기', fontSize: 0.9, color: Colors.grey, fontWeight: FontWeight.w600)))
                      ),

                      Etc.solidLineVertical(),

                      Container(
                          child: InkWell(
                              onTap: ()
                              {
                                showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (BuildContext context){
                                      return StatefulBuilder(
                                          builder: (BuildContext context, Function(void Function()) sheetSetState)
                                          {
                                            return TermsBottomSheet();
                                          }
                                      );
                                    }
                                );
                              },
                              child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Frame.myText(text: '회원가입', fontSize: 0.9, color: Colors.grey, fontWeight: FontWeight.w600)))
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }

  /// Sign completion callback function
  _showSignCallbackMessage() {
    Etc.showSnackBar(MSG_SIGN_SUCCESS, context);
  }
}
