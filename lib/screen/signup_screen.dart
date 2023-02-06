
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:street_parking/widgets/text_field.dart';

import '../main.dart';
import '../utils/card_validation.dart';
import '../utils/color.dart';
import '../utils/etc.dart';
import '../utils/frame.dart';
import '../widgets/button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key, required this.showSignCallbackMessage}) : super(key: key);
  final VoidCallback showSignCallbackMessage;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController pwd2Controller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController nikeNameController = TextEditingController();

  TextEditingController cardNumberController1 = TextEditingController();
  TextEditingController cardNumberController2 = TextEditingController();
  TextEditingController cardNumberController3 = TextEditingController();
  TextEditingController cardNumberController4 = TextEditingController();
  TextEditingController cardPeriodController4 = TextEditingController(); // 카드 유효기간
  TextEditingController cardCVVController = TextEditingController(); // 뒷면 3자리 cvv

  FocusNode firstFocusNode = FocusNode();
  FocusNode secondFocusNode = FocusNode();
  FocusNode thirdFocusNode = FocusNode();
  FocusNode fourthFocusNode = FocusNode();

  Color cardColor = Colors.grey;

  String? cardBankName = '신한';
  bool isCardBankName = false;

   IconData iconData = Icons.info_outline;
   String useCardText = '';

  bool isEditing = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cardNumberController1.addListener((){
      setState(() {
        cardColor = mainColor;
      });
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.fromLTRB(5, 20, 5, 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                          height: 550,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Frame.myText(
                                  text: '➤ 회원정보 입력',
                                  fontSize: 1.3,
                                  fontWeight: FontWeight.w600
                              ),

                              SignTextField(headText: '이메일', type: 'email', hint: '이메일을 입력해주세요.', controller: emailController),
                              SignTextField(headText: '비밀번호', type: 'pass', hint: '특수문자 포함 8~12자리 입력해주세요.', controller: pwdController),
                              SignTextField(headText: '비밀번호 확인', type: 'email', hint: '이메일을 작성해주세요.', controller: pwd2Controller),
                              SignTextField(headText: '이름', type: 'name', hint: '이름을 작성해주세요.', controller: nameController),
                              SignTextField(headText: '닉네임', type: 'nickName', hint: '닉네임을 작성해주세요.', controller: nikeNameController),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 15),

                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Frame.myText(
                                      text: '➤ 카드 정보 입력',
                                      fontSize: 1.3,
                                      fontWeight: FontWeight.w600
                                  ),
                                  Frame.myText(
                                    text: ' (최조 1회만)',
                                    fontSize: 1.0,
                                  )
                                ],
                              ),

                              SizedBox(height: 20),
                              Frame.myText(text: '✓ 카드번호'),
                              SizedBox(height: 5),

                              Container(
                                width: double.infinity - 50,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: cardColor, //color of border
                                      width: 2, //width of border
                                    ),
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Icon(Icons.credit_card, size: 30, color: cardColor),
                                        Visibility(
                                            visible: isCardBankName,
                                            child: Frame.myText(text: cardBankName ?? '', fontWeight: FontWeight.w600, fontSize: 1.0, color: cardColor)),
                                      ],
                                    ),
                                    Container(
                                      width: 65,
                                      child: TextFormField(
                                        controller: cardNumberController1,
                                        focusNode: firstFocusNode,
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.done,
                                        textAlign: TextAlign.center,
                                        inputFormatters: [ FilteringTextInputFormatter.digitsOnly],
                                        maxLength: 4,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            counterText:''//InputBorder.none,
                                        ),
                                        onChanged: (value) {
                                          if(value.length == 4)
                                          {
                                            if(cardNumberController2.text.length == 4){
                                              cardBankName = cardValidation(cardNumberController1.text, cardNumberController2.text.substring(0, 2));
                                              if(cardBankName == '') {
                                                setState(() {
                                                  isEditing = false;
                                                  isCardBankName = false;
                                                  cardColor = Colors.red;
                                                  iconData = Icons.dangerous_outlined;
                                                  useCardText = '사용가능한 카드가 아닙니다.';
                                                });
                                              } else {
                                                setState(() {
                                                  isEditing = false;
                                                  cardColor = Colors.blue;
                                                  isCardBankName = true;
                                                  iconData = Icons.task_alt_sharp;
                                                  useCardText = '사용가능한 카드입니다.';
                                                });
                                              }
                                            } else {
                                              // 다음 입력부분이 비어 있으면 자동으로 넘긴다.
                                              FocusScope.of(context).requestFocus(secondFocusNode);
                                            }
                                          } else {
                                            setState((){
                                              isEditing = true;
                                              isCardBankName = false;
                                              cardColor = mainColor;
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                    Frame.myText(text:'-'),

                                    Container(
                                      width: 65,
                                      child: TextFormField(
                                        focusNode: secondFocusNode,
                                        controller: cardNumberController2,
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.done,
                                        maxLength: 4,
                                        textAlign: TextAlign.center,
                                        inputFormatters: [ FilteringTextInputFormatter.digitsOnly ],
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            counterText:''//InputBorder.none1
                                        ),
                                        onChanged: (value){
                                          mLog.i(value);
                                          if(value.length >= 4)
                                          {
                                            if(cardNumberController1.text.length == 4){
                                              cardBankName = cardValidation(cardNumberController1.text, cardNumberController2.text.substring(0,2));
                                              if(cardBankName == '') {
                                                setState(() {
                                                  isEditing = false;
                                                  isCardBankName = false;
                                                  cardColor = Colors.red;
                                                  iconData = Icons.dangerous_outlined;
                                                  useCardText = '사용가능한 카드가 아닙니다.';
                                                });
                                              } else {
                                                setState(() {
                                                  isEditing = false;
                                                  cardColor = Colors.blue;
                                                  isCardBankName = true;
                                                  iconData = Icons.task_alt_sharp;
                                                  useCardText = '사용가능한 카드입니다.';

                                                  // 다음 입력부분이 비어 있으면 자동으로 넘긴다.
                                                  FocusScope.of(context).requestFocus(thirdFocusNode);
                                                });
                                              }
                                            }
                                          } else {
                                            setState((){
                                              isEditing = true;
                                              isCardBankName = false;
                                              cardColor = mainColor;
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                    Frame.myText(text:'-'),

                                    Container(
                                      width: 65,
                                      child: TextFormField(
                                        focusNode: thirdFocusNode,
                                        controller: cardNumberController3,
                                        keyboardType: TextInputType.number,
                                        obscureText: true,
                                        textInputAction: TextInputAction.done,
                                        maxLength: 4,
                                        textAlign: TextAlign.center,
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: InputDecoration(
                                            border:InputBorder.none,
                                            counterText:''//InputBorder.none,
                                        ),
                                        onChanged: (value) {
                                          if(value.length >= 4 && cardNumberController4.text.isEmpty){
                                            // 다음 입력부분이 비어 있으면 자동으로 넘긴다.
                                            FocusScope.of(context).requestFocus(fourthFocusNode);
                                          }
                                        },
                                      ),
                                    ),
                                    Frame.myText(text:'-'),

                                    Container(
                                      width: 65,
                                      child: TextFormField(
                                        focusNode: fourthFocusNode,
                                        controller: cardNumberController4,
                                        keyboardType: TextInputType.number,
                                        maxLength: 4,
                                        obscureText: true,
                                        textAlign: TextAlign.center,
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            counterText:''//InputBorder.none,
                                        ),
                                      ),

                                    ),

                                    Expanded(
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                              margin: const EdgeInsets.only(right: 5),
                                              child: InkWell(
                                                onTap: (){
                                                  cardNumberController1.clear();
                                                  cardNumberController2.clear();
                                                  cardNumberController3.clear();
                                                  cardNumberController4.clear();
                                                  // 다음 입력부분이 비어 있으면 자동으로 넘긴다.
                                                  FocusScope.of(context).requestFocus(firstFocusNode);
                                                  setState((){
                                                    isEditing = true;
                                                    isCardBankName = false;
                                                    cardColor = mainColor;
                                                  });
                                                },
                                                child: Icon(Icons.cancel, color: Colors.grey,),
                                              ),
                                            )))

                                  ],
                                ),
                              ),
                              Visibility(
                                visible: !isEditing,
                                child: Container(
                                  padding: EdgeInsets.only(left: 10, top: 10),
                                  child: Row(
                                    children: [
                                      Icon(iconData, color: cardColor),
                                      SizedBox(width: 8),
                                      Frame.myText(text: useCardText , color: cardColor, fontWeight: FontWeight.w600),
                                    ],
                                  ),
                                ),
                              ),


                              SizedBox(height: 20),

                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Frame.myText(text: '✓ CVV'),
                                        SizedBox(height: 5),
                                        MediaQuery(
                                          data: Etc.getScaleFontSize(context, fontSize: 0.9),
                                          child: TextFormField(
                                            controller: cardCVVController,
                                            keyboardType: TextInputType.number,
                                            inputFormatters:
                                            [
                                              FilteringTextInputFormatter.digitsOnly,
                                              LengthLimitingTextInputFormatter(3),
                                              MaskTextInputFormatter(mask: '###', filter: {"#": RegExp(r'[0-9]')})
                                            ],
                                            decoration: InputDecoration(
                                                border :OutlineInputBorder(),
                                                enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.grey, width: 2.0)),
                                                hintText: "카드 뒷면 3자리"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 30),

                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Frame.myText(text: '✓ 유효기간 (월/년)'),
                                        SizedBox(height: 5),
                                        MediaQuery(
                                          data: Etc.getScaleFontSize(context, fontSize: 0.9),
                                          child: TextFormField(
                                            controller: cardPeriodController4,
                                            keyboardType: TextInputType.number,
                                            inputFormatters:
                                            [
                                              FilteringTextInputFormatter.digitsOnly,
                                              LengthLimitingTextInputFormatter(4),
                                              MaskTextInputFormatter(mask: '##/##', filter: {"#": RegExp(r'[0-9]')})
                                            ],
                                            decoration: InputDecoration(
                                                border :OutlineInputBorder(),
                                                enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.grey, width: 2.0)),
                                                hintText: "MM/YY"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 40),

                      SignUpButton(context: context)
                    ]
                )
            ),
          ),
        )
    );
  }
}
