import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
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
                              ],
                            )),
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
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
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
      SizedBox(
        height: 6,
      ),
      Row(
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
      SizedBox(
        height: 6,
      ),
      Row(
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
      SizedBox(
        height: 6,
      ),
      Row(
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
      SizedBox(
        height: 19,
      ),
      Text(
        'Shop for ₹92 more, to save ₹15 on delivery charge',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF0B4619),
          fontSize: 12,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 18,
      ),
    ],
  );
}

// Widget InputQty(BuildContext context) {
//   int number = 0;
//   return Padding(
//     padding: const EdgeInsets.only(right: 28),
//     child: Container(
//         width: 66,
//         height: 26,
//         decoration: const BoxDecoration(color: Color(0xff0B4619)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             InkWell(
//                 onTap: () {
//                   setState(() {
//                     number--;
//                   });
//                 },
//                 child: Icon(Icons.remove, color: Colors.white)),
//             Text(
//               number.toString(),
//               style: GoogleFonts.poppins(
//                   color: Colors.white,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w500),
//             ),
//             InkWell(
//                 onTap: () {
//                   setState(() {
//                     number++;
//                   });
//                 },
//                 child: const Icon(Icons.add, color: Colors.white)),
//           ],
//         )),
//   );
// }

// void setState(Null Function() param0) {}

// int quantity = 1; // Initial quantity value

//   void incrementQuantity(BuildContext context) {
//     setState(() {
//       quantity++;
//     });
//   }

//   void decrementQuantity() {
//     if (quantity > 1) {
//       setState(() {
//         quantity--;
//       });
//     }
