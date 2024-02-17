// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShreevegWallet extends StatefulWidget {
  const ShreevegWallet({super.key});

  @override
  State<ShreevegWallet> createState() => _ShreevegWalletState();
}

class _ShreevegWalletState extends State<ShreevegWallet> {
  List<dynamic> walletMoney = ['+ ₹100', '+ ₹500', '+ ₹1000', '+ ₹2000'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const BackButton(
              color: Colors.white,
            ),
            toolbarHeight: (53),
            backgroundColor: const Color(0xff0B4619),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'ShreeVeg Wallet',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffFFFFFF)),
                  ),
                ),
                const Spacer(),
                const Icon(Icons.watch_later_outlined, color: Colors.white),
              ],
            )),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          height: 53,
                          width: 53,
                          child: Image.asset('assets/images/wallet.png')),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ShreeVeg Balance',
                              style: GoogleFonts.poppins(
                                  color: const Color(0xff000000),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '₹0',
                              style: GoogleFonts.poppins(
                                  color: const Color(0xff000000),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Use Shreeveg for hassle free payments on checkout and to receive cashbacks and credits',
                    style: GoogleFonts.poppins(
                        color: const Color(0xff5A5A5A),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Add Money',
                      style: GoogleFonts.poppins(
                          color: const Color(0xff000000),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Stack(
                    children: [
                      Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder()))),
                    ],
                  ),
                  Container(
                    height: 40,
                    child: ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 68,
                            height: 30,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffD9D9D9)),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(2))),
                            child: Text(
                              walletMoney[index],
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff000000)),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff0B4619),
                          border: Border.all(color: const Color(0xff0B4619)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(2))),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                          child: Text(
                        'Add Money',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffffffff)),
                      )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Wallet Offers',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(240, 0, 0, 0)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Add 100 and Get 10 Extra',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(240, 0, 0, 0)),
                      ),
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Add 500 and Get 50 Extra',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(240, 0, 0, 0)),
                      ),
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Add 1000 and Get 100 Extra',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(240, 0, 0, 0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
