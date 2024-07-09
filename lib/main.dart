import 'package:even_management/BookEvent.dart';
import 'package:even_management/Home.dart';
import 'package:even_management/Login.dart';
import 'package:even_management/MatchScreen.dart';
import 'package:even_management/NotificationScreen.dart';
import 'package:even_management/Onboarding/Onboard1.dart';
import 'package:even_management/Onboarding/Onboard2.dart';
import 'package:even_management/Privacy.dart';
import 'package:even_management/Register.dart';
import 'package:even_management/ResetPasswordScreen.dart';
import 'package:even_management/SplashScreen.dart';
import 'package:even_management/VerificationScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      initialRoute: '/Splashscreen',
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => SignupScreen(),
        '/otp': (context) =>  VerificationScreen(),
        '/notificaiton': (context) =>  NotificationScreen(),
        '/event': (context) =>  EventListScreen(),
        '/Privacy': (context) =>   PrivacySettingsScreen(),
        '/Splashscreen': (context) =>   Splashscreen(),
        '/Onboarding1': (context) =>   Onboard1(),
        '/ResetPasswordScreen': (context) =>   ResetPasswordScreen(),
        '/home': (context) =>  HomePage(),

        // '/Onboarding2': (context) =>   Onboarding2(),
 

        // Onboarding1 

        // VerificationScreen 
      },
      // Add a home route as a fallback
      // home: Builder(
      //   builder: (context) {
      //     return Scaffold(
      //       body: Center(
      //         child: Text('Home Route Not Defined'),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
