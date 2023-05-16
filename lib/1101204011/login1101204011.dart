import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/1101204011/hal1101204011.dart';
import 'package:flutter_application_1/1101204011/reset1101204011.dart';
import 'package:flutter_application_1/1101204011/signup1101204011.dart';
import 'package:flutter_application_1/1101204011/nav1101204011.dart';
import 'package:flutter_application_1/services/util.dart';
import 'package:sign_button/sign_button.dart';

import '../services/auth_service.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';
// import 'package:sign_button/sign_button.dart'
// void main() => runApp(const MyApp());

class hal1101204011new extends StatelessWidget {
  const hal1101204011new({Key? key}) : super(key: key);

  static const String _title = 'LOGIN PAGE';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                // _showAlertDialog(context);
                // Get.back();
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String _message = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(1),
                child: const Text(
                  'Fajar Adhitia Pratama',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(1),
                child: const Text(
                  '1101204011',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            CircleAvatar(
              radius: 60,
              child: Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/images/fajar.png"),
                    fit: BoxFit.fitWidth,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => reset1101204011(),
                  ),
                );
                //forgot password screen
              },
              child: const Text(
                'Forgot Password',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () async {
                    if (passwordController.text.isNotEmpty) {
                      debugPrint(hashPass(passwordController.text));
                      try {
                        final FirebaseAuth _auth = FirebaseAuth.instance;
                        UserCredential userCredential =
                            await _auth.signInWithEmailAndPassword(
                                email: nameController.text,
                                password: passwordController.text);
                        User? user1 = userCredential.user;

                        _showSnackbarReview(
                            false, user1!.email.toString() + 'Berhasil Masuk');
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavBarView(),
                          ),
                        );
                        setState(() {
                          _message = result ?? '';
                        });
                      } catch (e) {
                        _showSnackbarReview(true, 'Password Salah');
                        debugPrint("gagal karena : " + e.toString());
                      }
                      // final result = await Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => hal1101204011(),
                      //   ),
                      // );
                      // setState(() {
                      //   _message = result ?? '';
                      // });
                    } else {
                      _showSnackbarReview(
                          true, 'kolom password tidak boleh kosong');
                    }
                    // onPressed: () {
                    //   print(nameController.text);
                    //   print(passwordController.text);
                    // },
                  },
                )),
            // SignInButton(
            //   btnText: 'Login',
            //   buttonSize: ButtonSize.small,
            //   onPressed: () {},
            //   buttonType: ButtonType.microsoft,
            // ),
            SignInButton(
              buttonSize: ButtonSize.small,
              onPressed: () async {
                await AuthService.googleSignIn(context);
                // Navigator.pop(context);
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavBarView(),
                  ),
                );
                setState(() {
                  _message = result ?? '';
                });
              },
              buttonType: ButtonType.google,
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }

  void _showSnackbarReview(bool isError, String message) {
    final snackbar = SnackBar(
      content: Text(message),
      backgroundColor: !isError ? Colors.green : Colors.red,
      behavior: SnackBarBehavior.floating,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
