import 'package:flutter/material.dart';
import 'package:flutter_login_ui_app/pages/login_page.dart';
import 'package:flutter_login_ui_app/pages/signup_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return isLogin
        ? LoginPage(onClickedSignUp: toggle)
        : SignUpPage(onClickedSignIn: toggle);
  }

  void toggle() => setState(() => isLogin = !isLogin);
}
