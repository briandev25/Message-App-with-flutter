import 'package:flutter/material.dart';
import '../widgets/customButton.dart';
import './registrationPage.dart';
import './loginPage.dart';

class MyHomePage extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'logo',
                 child:Image.asset('assets/613d2816-2ac3-481e-959b-88bdb6dd858d_200x200.png'),
                  ),
                  Text('Message App',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                  ),
            ],
          ),
          SizedBox(height: 50.0,),
          CustomButton((){
            Navigator.of(context).pushNamed(LoginPage.routeName);
          }, 'Log in'),
          CustomButton((){
             Navigator.of(context).pushNamed(RegistrationPage.routeName);
          }, 'Register'),
        ],
      ),
    );
  }
}