import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          title: Text(
            'Select Payment Mode',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Text(
                  'Most Preffered',
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 105,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 235, 235),
                    borderRadius: BorderRadius.circular(9)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 58.0),
                      child: Text(
                        'ShreeVeg Wallet',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 58),
                      child: Container(
                        height: 34,
                        width: 204,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff0B4619),
                        ),
                        child: Center(
                          child: Text(
                            'Pay 400',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21.0),
                child: Text(
                  'Other Payment Method UPI ',
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 337,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 235, 235),
                    borderRadius: BorderRadius.circular(9)),
                child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start, children: []),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21.0),
                child: Text(
                  'Cards ',
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 62,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 235, 235),
                    borderRadius: BorderRadius.circular(9)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Row(
                          children: [
                            const Icon(Icons.credit_card),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Add Credit / Debit Card',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21.0),
                child: Text(
                  'Wallets ',
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 240,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 235, 235),
                    borderRadius: BorderRadius.circular(9)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 23,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 22,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Image.asset('assets/images/paytm.png'),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Paytm Wallet',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 27),
                              child: Text(
                                'Link & Pay',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff001C64)),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 22,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Image.asset('assets/images/amazon.png'),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Amazon Pay ',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 27),
                              child: Text(
                                'Link & Pay',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff001C64)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21.0),
                child: Text(
                  'Pay on Delivery ',
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 62,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 235, 235),
                    borderRadius: BorderRadius.circular(9)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 22,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffD1D1D1)),
                                  borderRadius: BorderRadius.circular(5)),
                              child: SizedBox(
                                height: 10,
                                width: 10,
                                child: CircleAvatar(
                                    backgroundColor: const Color(0xffFFFFFF),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child:
                                          Image.asset('assets/images/rupe.png'),
                                    )),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cash/ UPI on Delivery',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'Pay via Cash or UPI at the time of delivery ',
                                  style: GoogleFonts.poppins(
                                      fontSize: 9, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
