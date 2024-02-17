// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shreeveg/otp_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/images/grocery.png'),
                  height: 175,
                  width: 137,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Log In/Sign Up',
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 220, 228),
                      borderRadius: BorderRadius.circular(30.0)),
                  height: 38,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('assets/images/tiranga.png'),
                        height: 14,
                        width: 19,
                        margin: const EdgeInsets.all(10),
                      ),
                      Container(
                        child: const TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                                InputDecoration(border: InputBorder.none)),
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: 272,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          child: Center(
                              child: Text(
                            'Use Email',
                            style: GoogleFonts.poppins(
                                fontSize: 8, fontWeight: FontWeight.w500),
                          )),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 254, 254, 255),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 20,
                          width: 60,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                termcondition(),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen())),
                  child: Container(
                    child: Center(
                      child: Text(
                        'Continue',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 7, 58, 9),
                        borderRadius: BorderRadius.circular(30.0)),
                    height: 38,
                    width: MediaQuery.of(context).size.width * 0.90,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Sign in with',
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 32,
                      width: 31,
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
            ),
          ),
        ),
      ),
    );
  }
}

Widget termcondition() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(
      child: RichText(
        text: TextSpan(
          text: 'By continuing, you agree to our ',
          style: GoogleFonts.poppins(
              fontSize: 8, fontWeight: FontWeight.w400, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
              text: 'Terms of Service',
              style: GoogleFonts.poppins(
                fontSize: 8,
                fontWeight: FontWeight.w400,
                color: Colors.blue,
              ),
              // Add your onTap logic for Terms of Service link
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // Add your navigation or other logic here
                },
            ),
            TextSpan(
                text: ' and ',
                style: GoogleFonts.poppins(
                    fontSize: 8, fontWeight: FontWeight.w400)),
            TextSpan(
              text: 'Privacy Policy',
              style: GoogleFonts.poppins(
                fontSize: 8,
                fontWeight: FontWeight.w400,
                color: Colors.blue,
              ),
              // Add your onTap logic for Privacy Policy link
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // Add your navigation or other logic here
                },
            ),
          ],
        ),
      ),
    ),
  );
}
