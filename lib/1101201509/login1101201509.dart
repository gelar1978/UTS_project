import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/1101201509/hal1101201509.dart';
import 'package:flutter_application_1/1101201509/nav1101201509.dart';
import 'package:flutter_application_1/1101201509/reset1101201509.dart';
import 'package:flutter_application_1/1101201509/signup1101201509.dart';
import 'package:flutter_application_1/1108780030/nav1108780030.dart';
import 'package:flutter_application_1/controller/create_new_pass.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:flutter_application_1/services/confirm_pass.dart';
import 'package:flutter_application_1/services/pref_service.dart';
import 'package:flutter_application_1/services/util.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:get/route_manager.dart';
import 'package:sign_button/sign_button.dart';

class hal1101201509new extends StatelessWidget {
  const hal1101201509new({Key? key}) : super(key: key);

  static const String _title = 'Login Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  User? user1;

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
                  'Aldra Kasyfil Aziz',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(1),
                child: const Text(
                  '1101201509',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            CircleAvatar(
              backgroundImage: AssetImage('lib/images/aldra.jpg'),
              radius: 60,
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
                    builder: (context) => reset1101201509(),
                  ),
                );
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
                    // print("test");
                    if (passwordController.text.isNotEmpty) {
                      // final userLoggedIn =
                      //     await SharedPrefService.getLoggedInUserData();

                      debugPrint(hashPass(passwordController.text));
                      // debugPrint(userLoggedIn.password);
                      try {
                        final FirebaseAuth _auth = FirebaseAuth.instance;
                        UserCredential userCredential =
                            await _auth.signInWithEmailAndPassword(
                                email: nameController.text,
                                password: passwordController.text);

                        User? user1 = userCredential.user;

                        // user1 = await AuthService.signIn(
                        //     nameController.text, passwordController.text);
                        // user1 = hasil;
                        _showSnackbarReview(
                            false, user1!.email.toString() + ' Berhasil Masuk');
                        // debugPrint(user1.toString() + " success123");
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavBarView1101201509(),
                          ),
                        );
                        setState(() {
                          _message = result ?? '';
                        });
                      } catch (e) {
                        _showSnackbarReview(true, 'Password Salah');

                        debugPrint("gagal karena : " + e.toString());
                      }
                    } else {
                      _showSnackbarReview(
                          true, 'Kolom password tidak boleh kosong');
                    }
                  },
                )),
            SignInButton(
              buttonSize: ButtonSize.small,
              onPressed: () async {
                await AuthService.googleSignIn(context);
                // Navigator.pop(context);
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavBarView1101201509(),
                  ),
                );
                setState(() {
                  _message = result ?? '';
                });
              },
              buttonType: ButtonType.google,
            ),
            // SignInButton(
            //   // shape: ,
            //   buttonSize: ButtonSize.small,
            //   onPressed: () {},
            //   buttonType: ButtonType.facebook,
            // ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen1101201509(),
                      ),
                    );
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
