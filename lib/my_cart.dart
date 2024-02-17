import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shreeveg/utils/assets.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  Map<String, dynamic> deliveryOptions = {"delivery": true, "self": false};
  int selectedRadio = 0;
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(
          'My Cart',
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            locationRow(),
            Container(
              width: 390,
              height: 222,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 10,
                    offset: Offset(0, 0),
                    spreadRadius: -4,
                  )
                ],
              ),
              child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                            width: 62,
                            height: 81,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFBFCFF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFC1C1C1)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Image.asset('assets/images/tomato.png')),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Tamato'),
                          const Text('40g'),
                          Row(
                            children: [
                              Text(
                                '₹100',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromARGB(255, 10, 10, 10)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '₹150',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff8B8B8B),
                                    textStyle: const TextStyle(
                                        decoration:
                                            TextDecoration.lineThrough)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 28),
                        child: Container(
                          width: 66,
                          height: 26,
                          decoration:
                              const BoxDecoration(color: Color(0xff0B4619)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        number--;
                                      });
                                    },
                                    child: const Icon(Icons.remove,
                                        color: Colors.white)),
                                Text(
                                  number.toString(),
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        number++;
                                      });
                                    },
                                    child: const Icon(Icons.add,
                                        color: Colors.white)),
                              ]),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Offer',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 390,
              height: 115,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 10,
                    offset: Offset(0, 0),
                    spreadRadius: -4,
                  )
                ],
              ),
              child: ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                            width: 62,
                            height: 81,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFBFCFF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFC1C1C1)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Image.asset('assets/images/tomato.png')),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Tamato'),
                          const Text('40g'),
                          Row(
                            children: [
                              Text(
                                '₹100',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromARGB(255, 10, 10, 10)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '₹150',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff8B8B8B),
                                    textStyle: const TextStyle(
                                        decoration:
                                            TextDecoration.lineThrough)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 22),
                        child: Container(
                          width: 81,
                          height: 23,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFB80000),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2)),
                          ),
                          child: const Center(
                            child: Text(
                              'Not Eligible',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 37,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bill Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  price(),
                ],
              ),
            ),
            Container(
              height: 51,
              decoration: const BoxDecoration(color: Color(0xFFEBEBEB)),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Grand Total',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 25),
                        child: Text(
                          '₹90',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Container(
                            width: 57,
                            height: 17,
                            decoration:
                                const BoxDecoration(color: Color(0xFFDDFFE5)),
                            child: const Center(
                              child: Text(
                                'Saved ₹40',
                                style: TextStyle(
                                  color: Color(0xFF0B4619),
                                  fontSize: 8,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Delivery Option',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            RadioListTile(
              activeColor: Color(0xff0B4619),
              title: Text('Home Delivery'),
              value: 0,
              groupValue: selectedRadio,
              onChanged: (int? value) {
                setState(() {
                  selectedRadio = value!;
                });
              },
            ),
            RadioListTile(
              activeColor: Color(0xff0B4619),
              title: Text('Self Pickup'),
              value: 1,
              groupValue: selectedRadio,
              onChanged: (int? value) {
                setState(() {
                  selectedRadio = value!;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('Stores',
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w500)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(
                    children: [
                      Image.asset(
                        store,
                        height: 119,
                      ),
                      Text('Store Name',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w500)),
                      Text('Jhotwara',
                          style: GoogleFonts.poppins(
                              fontSize: 8, fontWeight: FontWeight.w400)),
                      Image.asset(
                        'assets/images/star.png',
                        height: 7,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Column(
                    children: [
                      Image.asset(
                        store2,
                        height: 119,
                      ),
                      Text('Store Name',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w500)),
                      Text('Jhotwara',
                          style: GoogleFonts.poppins(
                              fontSize: 8, fontWeight: FontWeight.w400)),
                      Image.asset(
                        'assets/images/star.png',
                        height: 7,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 31),
                  child: Container(
                      height: 13,
                      child: Image.asset('assets/images/truck.png')),
                ),
                SizedBox(
                  width: 8,
                ),
                Text('Select Delivery Option',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w500)),
              ],
            ),
            Divider(),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 51,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff039800)),
                      color: Color(0xffF1FFF4)),
                  child: Column(
                    children: [
                      Text('Morning',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                      Text('7:00 am-10:00 am',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                Container(
                  height: 51,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff039800)),
                      color: Color(0xffF1FFF4)),
                  child: Column(
                    children: [
                      Text('Evening',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                      Text('4:00 pm-6:00 pm',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(color: Color(0xffEBEBEB), height: 9),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 11),
                  child: Container(
                      height: 31,
                      width: 29,
                      decoration: BoxDecoration(color: Color(0xffEBEBEB)),
                      child: Icon(Icons.location_on)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Deliver to ',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                    Text('Bal Vihar, Jhotwara, Jaipur.... ',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget locationRow() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Stack(children: [
          // ignore: sized_box_for_whitespace
          Container(
              width: 47,
              height: 47,
              child: Image.asset('assets/images/location background.png')),
          const Padding(
            padding: EdgeInsets.all(11.0),
            child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                )),
          ),
        ]),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Location',
              style: GoogleFonts.poppins(
                  fontSize: 11, fontWeight: FontWeight.w400),
            ),
            Text(
              'Jaipur,Jhotwara',
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w500),
            )
          ],
        ),
        const Spacer(),
        const Icon(Icons.arrow_forward_ios)
      ],
    ),
  );
}

Widget price() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Row(
        children: [
          Text(
            'MRP',
            style: TextStyle(
              color: Color(0xFF4D4D4D),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 22),
            child: Text(
              '₹50',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 6,
      ),
      const Row(
        children: [
          Text(
            'Product discount',
            style: TextStyle(
              color: Color(0xFF4D4D4D),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(right: 22),
              child: Text(
                '-2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF0B4619),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ))
        ],
      ),
      const SizedBox(
        height: 6,
      ),
      const Row(
        children: [
          Text(
            'Handling Charge',
            style: TextStyle(
              color: Color(0xFF4D4D4D),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(right: 22),
              child: Text(
                '₹2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF0B4619),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ))
        ],
      ),
      const SizedBox(
        height: 6,
      ),
      const Row(
        children: [
          Text(
            'Delivery Charge',
            style: TextStyle(
              color: Color(0xFF4D4D4D),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(right: 22),
              child: Text(
                '₹30',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF0B4619),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ))
        ],
      ),
      const SizedBox(
        height: 19,
      ),
      const Text(
        'Shop for ₹92 more, to save ₹15 on delivery charge',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF0B4619),
          fontSize: 12,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(
        height: 18,
      ),
    ],
  );
}
