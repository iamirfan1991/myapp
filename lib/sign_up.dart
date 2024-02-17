// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shreeveg/home_page.dart';
import 'package:shreeveg/login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Column(
              children: [
                Center(
                  child: Container(
                    child: Image.asset('assets/images/grocery.png'),
                    height: 70,
                    width: 60,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Create an Account',
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          'Gender',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500),
                        ),
                      ),
                      alignment: Alignment.bottomLeft),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    // width: MediaQuery.of(context).size.width * 0.1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/male.png"),
                              radius: 30,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                          Image.asset('assets/images/female.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                          Image.asset('assets/images/other.png'),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Full Name",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Center(
                          child: Container(
                            child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(20))),
                            decoration: BoxDecoration(
                                color: Color(0xffF1F0F0),
                                borderRadius: BorderRadius.circular(30.0)),
                            height: 38,
                            width: MediaQuery.of(context).size.width * 0.90,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Email ID",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Center(
                          child: Container(
                            child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(20))),
                            decoration: BoxDecoration(
                                color: Color(0xffF1F0F0),
                                borderRadius: BorderRadius.circular(30.0)),
                            height: 38,
                            width: MediaQuery.of(context).size.width * 0.90,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Language",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Container(
                                child: Center(child: Text('English')),
                                decoration: BoxDecoration(
                                    color: Color(0xffF1F0F0),
                                    borderRadius: BorderRadius.circular(30.0)),
                                height: 38,
                                width: 111,
                              ),
                            ),
                            Center(
                              child: Container(
                                child: Center(child: Text('हिन्दी')),
                                decoration: BoxDecoration(
                                    color: Color(0xffF1F0F0),
                                    borderRadius: BorderRadius.circular(30.0)),
                                height: 38,
                                width: 111,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Phone Number",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Center(
                          child: Container(
                            child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(20))),
                            decoration: BoxDecoration(
                                color: Color(0xffF1F0F0),
                                borderRadius: BorderRadius.circular(30.0)),
                            height: 38,
                            width: MediaQuery.of(context).size.width * 0.90,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Password",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Center(
                          child: Container(
                            child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(20))),
                            decoration: BoxDecoration(
                                color: Color(0xffF1F0F0),
                                borderRadius: BorderRadius.circular(30.0)),
                            height: 38,
                            width: MediaQuery.of(context).size.width * 0.90,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Re-enter Password",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Center(
                          child: Container(
                            child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(20))),
                            decoration: BoxDecoration(
                                color: Color(0xffF1F0F0),
                                borderRadius: BorderRadius.circular(30.0)),
                            height: 38,
                            width: MediaQuery.of(context).size.width * 0.90,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Refer code",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Center(
                          child: Container(
                            child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(20))),
                            decoration: BoxDecoration(
                                color: Color(0xffF1F0F0),
                                borderRadius: BorderRadius.circular(30.0)),
                            height: 38,
                            width: MediaQuery.of(context).size.width * 0.90,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              )),
                          child: Container(
                            child: const Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                    fontFamily: AutofillHints.familyName),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 7, 58, 9),
                                borderRadius: BorderRadius.circular(30.0)),
                            height: 38,
                            width: MediaQuery.of(context).size.width * 0.90,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 8),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0B4619),
                            fontSize: 8),
                        // You can add onPressed logic here
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ));
                            // Add your login logic here
                          },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text('Sign Up with',
                    style: GoogleFonts.poppins(
                        fontSize: 8, fontWeight: FontWeight.w400)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: _handleGoogleSignIn,
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 32,
                        width: 31,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/logo2.png',
                      height: 32,
                      width: 31,
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}

GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

Future<void> _handleGoogleSignIn() async {
  try {
    await _googleSignIn.signIn();
    // ignore: empty_catches
  } catch (error) {}
}
