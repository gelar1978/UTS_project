import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/firestore_service.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:terature/services/firestore_service.dart';

class AuthService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final GoogleSignIn _googleSignIn = GoogleSignIn();
  // static final Facebook

  static Future<User?> signUp(String email, String password) async {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    User? firebaseUser = userCredential.user;

    return firebaseUser;
  }

  static Future<User?> signIn(String email, String password) async {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);

    User? firebaseUser = userCredential.user;

    return firebaseUser;
  }

  static Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  static Future<void> signOut() async {
    await _auth.signOut();

    await _googleSignIn.signOut();
    // await _f
  }

  static Future<void> googleSignIn(BuildContext context) async {
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        AuthCredential authCredential = GoogleAuthProvider.credential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken);

        UserCredential userCredential =
            await _auth.signInWithCredential(authCredential);
        print('success');

        await FirestoreService.addUserDataToFirestore(userCredential.user);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        print("account-exists-with-different-credential");
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                title: Text('Error'),
                content: Text(e.message!),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.red),
                      )),
                  TextButton(
                      onPressed: () async {
                        Navigator.pop(context);
                        List<String> emailList = await FirebaseAuth.instance
                            .fetchSignInMethodsForEmail(e.email!);
                        if (emailList.first == "facebook.com") {
                          await facebookSignIn(context);
                        }
                      },
                      child: Text('Ok'))
                ],
              );
            });
      }
    } catch (e) {
      print('not success');
      print(e.toString());
    }
  }

  static Future<void> facebookSignIn(BuildContext context) async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();

      if (result.status == LoginStatus.success) {
        AuthCredential authCredential =
            FacebookAuthProvider.credential(result.accessToken!.token);

        UserCredential userCredential =
            await _auth.signInWithCredential(authCredential);
        print("Success");
        await FirestoreService.addUserDataToFirestore(userCredential.user);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        print("account-exists-with-different-credential");
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                title: Text('Error'),
                content: Text(e.message!),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.red),
                      )),
                  TextButton(
                      onPressed: () async {
                        Navigator.pop(context);
                        List<String> emailList = await FirebaseAuth.instance
                            .fetchSignInMethodsForEmail(e.email!);
                        if (emailList.first == "google.com") {
                          await googleSignIn(context);
                        }
                      },
                      child: Text('Ok'))
                ],
              );
            });
      }
    } catch (e) {
      print("Not success");
      print(e.toString());
    }
  }

  static Stream<User?> get firebaseUserStream => _auth.authStateChanges();
}
