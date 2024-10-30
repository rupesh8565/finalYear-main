// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// // import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   // Google Sign In Method
//   Future<User?> _googleSignIn() async {
//     try {
//       final GoogleSignIn googleSignIn = GoogleSignIn(
//         clientId:
//             '197265866576-bka8m3701uof9c68gkc6mmckgc6bn6mr.apps.googleusercontent.com',
//       );
//       final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
//       if (googleUser != null) {
//         final GoogleSignInAuthentication googleAuth =
//             await googleUser.authentication;
//         final AuthCredential credential = GoogleAuthProvider.credential(
//           accessToken: googleAuth.accessToken,
//           idToken: googleAuth.idToken,
//         );
//         UserCredential userCredential =
//             await _auth.signInWithCredential(credential);
//         return userCredential.user;
//       }
//     } catch (e) {
//       print("Google Sign-In Error: $e");
//     }
//     return null;
//   }

//   // Facebook Sign In Method
// //   Future<User?> _facebookSignIn() async {
// //   try {
// //     final LoginResult result = await FacebookAuth.instance.login();

// //     if (result.status == LoginStatus.success) {
// //       final AccessToken? accessToken = result.accessToken;
// //       if (accessToken != null) {
// //         final OAuthCredential facebookAuthCredential =
// //             FacebookAuthProvider.credential(accessToken.token);

// //         // Sign in to Firebase with the credential
// //         UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
// //         return userCredential.user;
// //       } else {
// //         print("Facebook accessToken is null.");
// //       }
// //     } else if (result.status == LoginStatus.cancelled) {
// //       print("Facebook login cancelled");
// //     } else {
// //       print("Facebook login failed: ${result.message}");
// //     }
// //   } catch (e) {
// //     print("Facebook Sign-In Error: $e");
// //   }
// //   return null;
// // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign In'),
//         backgroundColor: Color(0xffd5edf9),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Email and Password input fields
//             SizedBox(height: 20),

//             // Login Button
//             ElevatedButton(
//               onPressed: () {
//                 // Logic for Email/Password Sign-In (to be implemented)
//               },
//               child: Text('LOGIN'),
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//               ),
//             ),

//             SizedBox(height: 20),

//             // Google and Facebook Sign-In buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Google Sign-In Button
//                 IconButton(
//                   icon: Image.asset('assets/google.png'),
//                   iconSize: 50,
//                   onPressed: () async {
//                     User? user = await _googleSignIn();
//                     if (user != null) {
//                       print("Google Sign-In successful: ${user.email}");
//                       // Navigate to the next page or dashboard
//                     }
//                   },
//                 ),

//                 // Facebook Sign-In Button
//                 // IconButton(
//                 //   icon: Image.asset('assets/facebook.png'),
//                 //   iconSize: 50,
//                 //   onPressed: () async {
//                 //     User? user = await _facebookSignIn();
//                 //     if (user != null) {
//                 //       print("Facebook Sign-In successful: ${user.email}");
//                 //       // Navigate to the next page or dashboard
//                 //     }
//                 //   },
//                 // ),
//               ],
//             ),
//           ],
//         ),
//      ),
// );
// }
// }