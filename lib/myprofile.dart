import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  List<String> myform = [
    'Full Name',
    'Phone Number',
    'Password',
    'Address',
    'Email Id'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'My Profile',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/Ellipse 3.png',
                    height: 86,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Mohd Irfan Khan',
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'User Id: 1045120',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff989898)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'My Account',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            ListView.builder(
              itemCount: myform.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        myform[index],
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffD8D8D8)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10)),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff0B4619),
                    border: Border.all(color: const Color(0xff0B4619)),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Text(
                  'Save Changes',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffffffff)),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget form(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Full Name',
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffD8D8D8)),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: const TextField(
            decoration: InputDecoration(border: InputBorder.none),
          ),
        )
      ],
    ),
  );
}
