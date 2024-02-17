// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  List<Map<String, dynamic>> offerlistData = [
    {'title': 'Premium Quality Avacado', 'image': 'assets/images/Avacado.png'},
    {'title': 'Premium Quality Tomato', 'image': 'assets/images/tomato.png'},
    {'title': 'Premium Quality Banna', 'image': 'assets/images/banana.png'},
  ];

  List<Map<String, dynamic>> dailysalelistData = [
    {'title': 'Premium Quality mango', 'image': 'assets/images/mango.png'},
    {'title': 'Premium Quality Onion', 'image': 'assets/images/onion.png'},
    {'title': 'Premium Quality Grapes', 'image': 'assets/images/grapes.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 29,
                      width: 29,
                      child: Image.asset('assets/images/user.png')),
                )
              ],
            ),
            // User Location Data
            locationRow(),
            // ListView.builder(
            //   itemCount: images.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return Image.asset(images[index]);
            //   },
            // ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 162,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/fruitbanner.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 162,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/offer.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            searchfield(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Categories',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  categoryItemCard('Fruits', 'assets/images/fruit.png'),
                  categoryItemCard('Vegetables', 'assets/images/veg.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      'Special Offers',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: 250,
                child: ListView.builder(
                    itemCount: offerlistData.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: itemCard(offerlistData[index]['title'],
                            offerlistData[index]['image']),
                      );
                    })),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    Text(
                      'Daily Sale',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: 250,
                child: ListView.builder(
                    itemCount: dailysalelistData.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: itemCard(dailysalelistData[index]['title'],
                            dailysalelistData[index]['image']),
                      );
                    }))
          ],
        ),
      ),
    );
  }

  Widget locationRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(Icons.location_on_sharp),
          const SizedBox(
            width: 50,
          ),
          Column(
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

  Widget itemCard(String value, String img) {
    return ClipRRect(
      child: Banner(
        message: '10% off',
        location: BannerLocation.topStart,
        color: const Color(0xff0B4619),
        child: Container(
            width: 143,
            // height: 210,
            decoration:
                BoxDecoration(border: Border.all(style: BorderStyle.none)),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 143,
                      height: 121,
                      decoration: const BoxDecoration(color: Color(0xffEBEBEC)),
                      child: Image.asset(
                        img,
                        fit: BoxFit.fill,
                        height: 90,
                        width: 87,
                      ),
                    ),
                    // Banner(),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          'assets/images/heart.png',
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    value,
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            'assets/images/star.png',
                            height: 7,
                            width: 43,
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '₹1',
                      style: GoogleFonts.poppins(
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff0B4619)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '₹50',
                      style: GoogleFonts.poppins(
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff8B8B8B),
                          textStyle: const TextStyle(
                              decoration: TextDecoration.lineThrough)),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }

  Widget categoryItemCard(String value, String img) {
    return SizedBox(
      height: 160,
      width: 175,
      child: Column(
        children: [
          Image.asset(img, height: 136),
          Text(
            value,
            style:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

Widget searchfield() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: const Color(0xffF0F1F2),
          borderRadius: BorderRadius.circular(10)),
      height: 52,
      width: 343,
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search Anything',
              ),
            )),

            // Text(
            //   'Search Anything',
            //   style: GoogleFonts.poppins(
            //     fontSize: 16,
            //     fontWeight: FontWeight.w400,
            //   ),
            // )
          ],
        ),
      ),
    ),
  );
}
