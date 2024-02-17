// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shreeveg/sign_up.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
              child: Text(
            'Login Using OTP',
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
          )),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Please check the OTP Send to your Mobile number',
            style: GoogleFonts.poppins(),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    '+91123456789',
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                width: 65,
                height: 24,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xffFD4F4F)),
                ),
                child: Center(
                  child: Text(
                    'Change',
                    style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffFD4F4F)),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 67,
                width: 63,
                decoration: const BoxDecoration(color: Color(0xffF1F0F0)),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 67,
                width: 63,
                decoration: const BoxDecoration(color: Color(0xffF1F0F0)),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 67,
                width: 63,
                decoration: const BoxDecoration(color: Color(0xffF1F0F0)),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 67,
                width: 63,
                decoration: const BoxDecoration(color: Color(0xffF1F0F0)),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: const TextSpan(text: 'Confirm within ', children: [
              TextSpan(text: "00:56s", style: TextStyle(color: Colors.red))
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Resend Code',
              style: TextStyle(
                color: Color(0xff0B4619),
              )),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUp(),
                )),
            child: Container(
              child: const Center(
                child: Text(
                  'Login',
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
    );
  }
}
