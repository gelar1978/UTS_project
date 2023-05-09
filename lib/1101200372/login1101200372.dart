import 'package:flutter/material.dart';
import 'package:flutter_application_1/1101200372/hal1101200372.dart';
import 'package:flutter_application_1/1101200372/reset1101200372.dart';
import 'package:flutter_application_1/1101200372/signup1101200372.dart';
import 'package:sign_button/sign_button.dart';

class hal1101200372new extends StatelessWidget {
  const hal1101200372new({Key? key}) : super(key: key);

  static const String _title = 'LOGIN PAGE';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
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
                  'Aldira Fadillah Lazuardi',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(1),
                child: const Text(
                  '1101200372',
                  style: TextStyle(
                      color: Colors.redAccent,
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
                    image: AssetImage("lib/images/aldira.png"),
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
                    builder: (context) => reset1101200372(),
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
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => hal1101200372old(),
                      ),
                    );
                    setState(() {
                      _message = result ?? '';
                    });
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
              onPressed: () {},
              buttonType: ButtonType.google,
            ),
            SignInButton(
              // shape: ,
              buttonSize: ButtonSize.small,
              onPressed: () {},
              buttonType: ButtonType.facebook,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                        builder: (context) => SignUpScreen1101200372(),
                      ),
                    );
                    //signup screen
                  },
                )
              ],
            ),
          ],
        ));
  }
}