import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  List<Map<dynamic, dynamic>> orderitem = [
    {
      'image': 'assets/images/Avacado.png',
      'title': 'Apples',
      'price': '₹100',
    },
    {
      'image': 'assets/images/grapes.png',
      'title': 'Grapes',
      'price': '₹50',
    },
    {
      'image': 'assets/images/banana.png',
      'title': 'Banana',
      'price': '₹20',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
        color: Colors.black,
      )),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Summary',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  'Arrived at 12:30 pm',
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 9,
                ),
                Row(
                  children: [
                    Text(
                      'Download Invoice',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff039800)),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    const Icon(
                      Icons.download,
                      color: Color(0xff039800),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  '5 items in this Order',
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
                ListView.builder(
                  itemCount: orderitem.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 56,
                          child: Row(
                            children: [
                              Container(
                                height: 56,
                                width: 56,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color(0xffB6B6B6))),
                                child: Image.asset(orderitem[index]['image']),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      orderitem[index]['title'],
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Text(
                                    '3 x 1 Kg',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff929292)),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 19.0),
                                child: Text(
                                  orderitem[index]['price'],
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff0B4619)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 28,
                ),
                Text('Bill Details',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Text('MRP',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff4E4E4E))),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 19.0),
                      child: Text('₹50',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff000000))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('Product discount',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff4E4E4E))),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 19.0),
                      child: Text('-2',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff0B4619))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('Handling Charge',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff4E4E4E))),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 19.0),
                      child: Text('₹2',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff0B4619))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('Delivery Charge',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff4E4E4E))),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 19.0),
                      child: Text('₹30',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff0B4619))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 23,
                )
              ],
            ),
          ),
          Container(
            height: 51,
            decoration: const BoxDecoration(color: Color(0xffEBEBEB)),
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  Text('Grand Total',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff000000))),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 28.0),
                    child: Column(
                      children: [
                        Text('₹90',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff000000))),
                        Container(
                          width: 57,
                          height: 17,
                          decoration:
                              const BoxDecoration(color: Color(0xffDDFFE5)),
                          child: Center(
                            child: Text('Saved ₹40',
                                style: GoogleFonts.poppins(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff0B4619))),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 38,
                  width: 105.42,
                  decoration: BoxDecoration(
                      color: const Color(0xff038E00),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Edit order',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffFAFBFE)),
                    ),
                  )),
              Container(
                  height: 38,
                  width: 105.42,
                  decoration: BoxDecoration(
                      color: const Color(0xffD70D0D),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Cancel Order',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffFAFBFE)),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: 38,
              width: 333,
              decoration: BoxDecoration(
                  color: const Color(0xff0B4619),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  'Track your Order',
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffFAFBFE)),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
