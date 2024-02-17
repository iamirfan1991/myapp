// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  List<String> images = [
    'assets/images/orange.png',
    'assets/images/banner.png',
    'assets/images/fruitbanner.png'
  ];
  @override
  Widget build(BuildContext context) {
    int number = 0;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {
                  // Add your action here
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                // Container(
                //   height: 221,
                //   width: MediaQuery.of(context).size.width,
                //   child: PageView.builder(
                //       itemCount: 2,
                //       pageSnapping: true,
                //       itemBuilder: (context, pagePosition) {
                //         return Container(
                //             margin: EdgeInsets.all(10),
                //             child: Image.asset(images[pagePosition]));
                //       }),
                // ),
                SizedBox(
                  height: 221,
                  child: ListView(
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/orange.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //4th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/orange.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //5th Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/orange.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Mini Orange',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 67,
                      height: 11,
                      child: ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Icon(
                            Icons.star,
                            size: 10,
                            color: Color(0xff0B4619),
                          );
                        },
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 21,
                      width: 72,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xff039800)),
                      child: Center(
                        child: Text(
                          'In Stock',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 66,
                    decoration: BoxDecoration(color: Color(0xff0B4619)),
                    child: Padding(
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
                                  child:
                                      Icon(Icons.remove, color: Colors.white)),
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
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Select Unit')),

                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 48,
                        width: 95,
                        decoration: BoxDecoration(
                            color: Color(0xffF1FFF4),
                            border: Border.all(color: Color(0xff039800)),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: const [
                            Text('1 Kg'),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17),
                              child: Row(
                                children: [
                                  Text('₹30'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('₹30')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 48,
                        width: 95,
                        decoration: BoxDecoration(
                            color: Color(0xffF1FFF4),
                            border: Border.all(color: Color(0xff039800)),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: const [
                            Text('1 Kg'),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17),
                              child: Row(
                                children: [
                                  Text('₹30'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('₹30'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 48,
                        width: 95,
                        decoration: BoxDecoration(
                            color: Color(0xffF1FFF4),
                            border: Border.all(color: Color(0xff039800)),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: const [
                            Text('1 Kg'),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17),
                              child: Row(
                                children: [
                                  Text('₹30'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('₹30'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 37,
            ),
            Container(
              width: 390,
              height: 51,
              decoration: BoxDecoration(
                color: Color(0xFFF9B233),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Total:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    Text(
                      ' ₹250',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.05,
                    ),
                  ),
                  Text(
                    'Reviews',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.05,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Color(0xFF7B7B7B),
                fontSize: 11,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0.13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
