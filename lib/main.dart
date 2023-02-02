import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:street_parking/screen/login_sreen.dart';
import 'package:street_parking/utils/color.dart';
import 'package:street_parking/utils/logging.dart';

/// Custom Log
final mLog = logger;

Future<void> main() async{

  /// 플랫폼 채널의 위젯 바인딩을 보장해야한다.
  WidgetsFlutterBinding.ensureInitialized();

  // await Permission.activityRecognition.request();
  // await _initAuthorization();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeData = ThemeData();

    /// 상단 상태바 Color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white)
    );

    /// 앱 화면 세로 위쪽 방향으로 고정
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      title: 'Street Parking',
      debugShowCheckedModeBanner: false,
      theme:Theme.of(context).copyWith(
          colorScheme: themeData.colorScheme.copyWith(primary: mainColor),
          primaryTextTheme: themeData.textTheme.apply(fontFamily: 'nanum_square')
      ),

      localizationsDelegates:
      [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales:
      [
        Locale('ko', ''),
        Locale('en', ''),
      ],

      initialRoute: 'login_screen',

      routes:
      {
        'login_screen' : (context) => LoginScreen(),
      },
    );
  }
}
