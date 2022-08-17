import 'package:aug_ui/Bottom_Navigation_Bar/signup_bnb.dart';
import 'package:aug_ui/Helper/pi_logo.dart';
import 'package:aug_ui/Room/choose_room_screen.dart';
import 'package:aug_ui/Validation/validation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

PiLogo piLogo = PiLogo();
// ignore: non_constant_identifier_names
Signup_BNB signup_bnb = Signup_BNB();

class _LoginpageState extends State<Loginpage> {
  final _formKey = GlobalKey<FormState>();
  var checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  piLogo.pi_logo(),
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Column(
                      children: [
                        Form(
                          key: _formKey,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                TextFormField(
                                  validator: (value) =>
                                      Validation.validateEmail(value!),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(15),
                                    isCollapsed: true,
                                    isDense: true,
                                    prefixIcon:
                                        Icon(Icons.mail_outline_rounded),
                                    hintText: 'Email Address',
                                    hintStyle: TextStyle(fontSize: 13),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(15),
                                    isCollapsed: true,
                                    isDense: true,
                                    prefixIcon: Transform.rotate(
                                      angle: 180 * math.pi / 270,
                                      child: Icon(Icons.key_outlined),
                                    ),
                                    hintText: 'Password',
                                    hintStyle: TextStyle(fontSize: 13),
                                  ),
                                  validator: (value) =>
                                      Validation.validatePassword(value!),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                      checkColor: Colors.black45,
                                      activeColor: Colors.orange,
                                      value: checkedValue,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          checkedValue = value!;
                                        });
                                      }),
                                  Text(
                                    'Remember me',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                              Text(
                                'Forgot Password?',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      stops: const [0.3, 1],
                                      colors: const [
                                        Colors.orangeAccent,
                                        Colors.deepOrangeAccent
                                      ],
                                    ),
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          /*  Navigator.push(context,
                                    MaterialPageRoute(builder: (_) => RegistrationPage()));*/
                                          /*if(_formKey.currentState == null){
                                  print("_formKey.currentState is null!");
                                }
                                else */
                                          if (_formKey.currentState!
                                              .validate()) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (_) =>
                                                        Choose_my_Room()));
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            onSurface: Colors.transparent,
                                            shadowColor: Colors.transparent,
                                            shape: StadiumBorder()),
                                        child: Text(
                                          'LOG IN',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Or Login via',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black45),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 21, right: 21),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: ElevatedButton(
                                  onPressed: null,
                                  style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blueAccent),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              side: BorderSide(
                                                  color: Colors.black12)))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Wrap(
                                          children: const <Widget>[
                                            Icon(
                                              Icons.facebook,
                                              size: 25,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'FACEBOOK',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.blueAccent,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 1,
                                child: ElevatedButton(
                                  onPressed: null,
                                  style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blueAccent),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              side: BorderSide(
                                                  color: Colors.black12)))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Wrap(children: const <Widget>[
                                          Icon(
                                            Icons.mail,
                                            color: Colors.red,
                                            size: 25,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'GOOGLE',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ]),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ]),
      ),
      bottomNavigationBar: signup_bnb.bnb_login(context),
    );
  }
}
