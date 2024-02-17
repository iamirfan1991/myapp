// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shreeveg/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      appBar: AppBar(
          title: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              height: 29,
              width: 29,
              child: Image.asset('assets/images/user.png')),
        ),
      )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Search(),
                ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffF0F1F2),
                      borderRadius: BorderRadius.circular(10)),
                  height: 52,
                  width: MediaQuery.of(context).size.width,
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 8),
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Search Anything'),
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
            ),

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
          Stack(children: [
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

Widget searchfield(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: const Color(0xffF0F1F2),
          borderRadius: BorderRadius.circular(10)),
      height: 52,
      width: MediaQuery.of(context).size.width,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 8),
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
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
  );
}
