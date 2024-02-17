// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shreeveg/my_order.dart';
import 'package:shreeveg/myprofile.dart';
import 'package:shreeveg/shreeveg_wallet.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  List<Map<dynamic, dynamic>> myaccountitem = [
    {
      'title': 'My Profile',
      'image': 'assets/images/1.png',
      'navigate': const MyProfile()
    },
    {
      'title': 'Orders',
      'image': 'assets/images/2.png',
      'navigate': const MyOrders()
    },
    {
      'title': 'Cancel Orders',
      'image': 'assets/images/3.png',
      'navigate': const MyProfile()
    },
    {
      'title': 'Shreeveg Wallet',
      'image': 'assets/images/4.png',
      'navigate': const ShreevegWallet()
    },
    {
      'title': 'Addresses',
      'image': 'assets/images/5.png',
      'navigate': const MyOrders()
    },
    {
      'title': 'Rating and review',
      'image': 'assets/images/6.png',
      'navigate': const MyProfile()
    },
    {
      'title': 'Support',
      'image': 'assets/images/7.png',
      'navigate': const MyOrders()
    },
    {
      'title': 'Saved Payments',
      'image': 'assets/images/8.png',
      'navigate': const MyProfile()
    },
    {
      'title': 'Notification',
      'image': 'assets/images/9.png',
      'navigate': const MyOrders()
    },
    {
      'title': 'Refer & Earn',
      'image': 'assets/images/10.png',
      'navigate': const MyProfile()
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const BackButton(
              color: Colors.white,
            ),
            toolbarHeight: (53),
            backgroundColor: const Color(0xff0B4619),
            title: Center(
                child: Text(
              'My Account',
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffFFFFFF)),
            ))),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Column(
                  children: [
                    Container(
                        height: 81,
                        width: 81,
                        child: Image.asset('assets/images/profileimage.png')),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Mohd Irfan Khan',
                      style: GoogleFonts.poppins(
                          color: const Color(0xff000000),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'irfan.rajasthan@gmail.com',
                      style: GoogleFonts.poppins(
                          color: const Color(0xff7C7C7C),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: myaccountitem.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: accountitem(myaccountitem[index]['image'],
                              myaccountitem[index]['title'], () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  myaccountitem[index]['navigate'],
                            ));
                          }),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}

Widget accountitem(dynamic img, String value, Function()? onTap) {
  return InkWell(
    onTap: onTap,
    child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/images/circle.png'),
                ),
                Container(height: 18, width: 18, child: Image.asset(img))
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              value,
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            )
          ],
        )),
  );
}
