import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../widgets/customButton.dart';
import './chatPage.dart';
class LoginPage extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    String email;
 String password;

final FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> loginUser() async {
 FirebaseUser _user =await  _auth.signInWithEmailAndPassword(
   email: email,
    password: password); 
    Navigator.push(context,
  MaterialPageRoute(builder: (context) => ChatPage() ) );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Start Chat"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Hero(
            tag: 'logo',
             child: Container(
               child: Image.asset('assets/613d2816-2ac3-481e-959b-88bdb6dd858d_200x200.png'),
             ),
             ),
             ),
             SizedBox(
              height: 40.0, 
             ),
             TextField(
               keyboardType: TextInputType.emailAddress,
               decoration: InputDecoration(
                 hintText: 'Enter your Email',
                 border: OutlineInputBorder(),
               ),
               onChanged: (value) => email = value,
             ),
              SizedBox(
              height: 40.0, 
             ),
             TextField(
               autocorrect: false,                              //to avoid auto correction in password
               obscureText: true,                              //To hide the password
               decoration: InputDecoration(
                 hintText: 'Enter Password',
                 border: OutlineInputBorder(),
               ),
                onChanged: (value) => password = value,
             ),
             CustomButton(() async{
              await loginUser();
             },
              'Log in')
        ],
      ),
    );
    
  }
}