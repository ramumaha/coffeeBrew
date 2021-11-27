import 'package:brew_crew/screens/authenticate/authenticate.dart';
import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
   final AuthService _auth=new AuthService();
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation:0.0,
        title:Text('Sign in to brew Crew'),
      ),
      body:Container(
        padding:EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
        child:RaisedButton(
          child:Text('Sign in Anon'),
          onPressed: ()async{
           dynamic result= await _auth.signInAnon();
           if(result==null){
             print('no sign in');
           }else{
             print(result);
           }


          },
        )
      )

    );
  }
}
