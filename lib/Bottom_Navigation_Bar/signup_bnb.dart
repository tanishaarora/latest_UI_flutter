import 'package:aug_ui/Sign_up/signup_screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Signup_BNB extends StatefulWidget {
  const Signup_BNB({Key? key}) : super(key: key);

  @override
  State<Signup_BNB> createState() => _Signup_BNBState();

  // ignore: non_constant_identifier_names
  bnb_login(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: TextStyle(color: Colors.black54, fontSize: 12),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => RegistrationPage()));
              },
              child: Text(
                'SIGN UP',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _Signup_BNBState extends State<Signup_BNB> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
