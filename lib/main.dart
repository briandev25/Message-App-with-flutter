import 'package:flutter/material.dart';
import './Screens/homeScreen.dart';
import './Screens/registrationPage.dart';
import './Screens/loginPage.dart';
import './Screens/chatPage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     initialRoute: MyHomePage.routeName,
     routes: {
      MyHomePage.routeName : (ctx) => MyHomePage(),
     RegistrationPage.routeName : (ctx) => RegistrationPage(),
     LoginPage.routeName : (ctx) => LoginPage(),
     ChatPage.routeName : (ctx) => ChatPage()
     },
    );
  }
}
