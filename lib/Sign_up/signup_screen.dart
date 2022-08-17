import 'package:aug_ui/Room/choose_room_screen.dart';
import 'package:aug_ui/Validation/validation.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  // Helper helper = new Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Text(
          'Sign Up',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.5),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    /*ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => Choose_my_Room()));
                  },
                  child:*/
                    Text(
                      'Create Your Account',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Please enter info to create account',
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        validator: (value) => Validation.validateName(value!),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          isCollapsed: true,
                          isDense: true,
                          prefixIcon: Icon(Icons.person),
                          hintText: 'First Name',
                          hintStyle: TextStyle(fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) =>
                            Validation.validateSurName(value!),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          isCollapsed: true,
                          isDense: true,
                          prefixIcon: Icon(Icons.person),
                          /*prefixIcon: Transform.rotate(
                              angle: 180 * math.pi / 270,
                              child: Icon(Icons.key_outlined),
                            ),*/
                          hintText: 'Surname',
                          hintStyle: TextStyle(fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) => Validation.validateEmail(value!),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          isCollapsed: true,
                          isDense: true,
                          prefixIcon: Icon(Icons.mail_outline),
                          /*prefixIcon: Transform.rotate(
                              angle: 180 * math.pi / 270,
                              child: Icon(Icons.key_outlined),
                            ),*/
                          hintText: 'Email Address',
                          hintStyle: TextStyle(fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) => Validation.validateMobile(value!),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          isCollapsed: true,
                          isDense: true,
                          prefixIcon: Icon(Icons.phone_iphone),
                          /*prefixIcon: Transform.rotate(
                              angle: 180 * math.pi / 270,
                              child: Icon(Icons.key_outlined),
                            ),*/
                          hintText: 'Phone',
                          hintStyle: TextStyle(fontSize: 13),
                        ),
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),

                        //   validator: (input) => helper.Validator() ? null : "Check your email",

                        /*keyboardType: const TextInputType.numberWithOptions(decimal: true),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter phone number';
                          }
                          else if (value.length < 10) {
                            return 'Please enter atleast 10 characters';
                          }
                          return null;
                        },*/
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Padding(
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
                          if (_formKey.currentState!.validate()) {

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Choose_my_Room()));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: StadiumBorder()),
                        child: Text(
                          'NEXT',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account? ',
                style: TextStyle(color: Colors.black54, fontSize: 12),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Text(
                  'LOG IN',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
