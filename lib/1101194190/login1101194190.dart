import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/1101194190/hal1101194190.dart';
import 'package:flutter_application_1/1101194190/nav1101194190.dart';
import 'package:flutter_application_1/1101194190/reset1101194190.dart';
import 'package:flutter_application_1/1101194190/signup1101194190.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:get/route_manager.dart';
import 'package:sign_button/sign_button.dart';

import '../services/util.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';
// import 'package:sign_button/sign_button.dart'
// void main() => runApp(const MyApp());

class hal1101194190new extends StatelessWidget {
  const hal1101194190new({Key? key}) : super(key: key);

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
                  'Dewi Nurulaeni Achdalina',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(1),
                child: const Text(
                  '1101194190',
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
                    image: AssetImage("lib/images/DewiNA.jpg"),
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
                    builder: (context) => reset1101194190(),
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
                        _showSnackbarReview(
                            false, user1!.email.toString() + ' Berhasil Masuk');
                        // debugPrint(user1.toString() + " success123");
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

                      // if (hashPass(passwordController.text) ==
                      //     userLoggedIn.password) {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => CreateNewPasswordView(
                      //         currentPassword: passwordController.text,
                      //         email: nameController.text,
                      //       ),
                      //     ),
                      //   );
                      // } else {
                      //   _showSnackbarReview(true, 'Password tidak sesuai');
                      // }
                    } else {
                      _showSnackbarReview(
                          true, 'Kolom password tidak boleh kosong');
                    }
                    //AuthService.signIn(
                    //    nameController.text, passwordController.text);
                    //final result = await Navigator.push(
                    //  context,
                    //  MaterialPageRoute(
                    //    builder: (context) => hal1101194190old(),
                    //  ),
                    //);
                    //setState(() {
                    //  _message = result ?? '';
                    //});
                  },
                  // onPressed: () {
                  //   print(nameController.text);
                  //   print(passwordController.text);
                  // },
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
                    builder: (context) => hal1101194190old(),
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
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => signup1101194190(),
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
