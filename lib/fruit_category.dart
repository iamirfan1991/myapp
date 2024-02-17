import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shreeveg/product_view.dart';

List<Map<dynamic, dynamic>> fruitcategoryitem = [
  {
    'image': 'assets/images/apple.png',
    'title': 'Apples',
    'price': '100',
    'offer': '10%',
    'showOffer': true
  },
  {
    'image': 'assets/images/grapes.png',
    'title': 'Grapes',
    'price': '50',
    'offer': '12%',
    'showOffer': true
  },
  {
    'image': 'assets/images/banana.png',
    'title': 'Banana',
    'price': '20',
    'offer': '18%',
    'showOffer': true
  },
  {
    'image': 'assets/images/papaya.png',
    'title': 'Papaya',
    'price': '20',
    'offer': '15%',
    'showOffer': false
  },
  {
    'image': 'assets/images/papaya.png',
    'title': 'Papaya',
    'price': '20',
    'offer': '15%',
    'showOffer': true
  },
  {
    'image': 'assets/images/papaya.png',
    'title': 'Papaya',
    'price': '20',
    'offer': '15%',
    'showOffer': true
  },
];

class FruitCategory extends StatefulWidget {
  const FruitCategory({super.key});

  @override
  State<FruitCategory> createState() => _FruitCategoryState();
}

class _FruitCategoryState extends State<FruitCategory> {
  List<Map<dynamic, dynamic>> fruitcategory = [
    {'image': 'assets/images/All Fruits.png', 'title': 'All Fruits'},
    {
      'image': 'assets/images/Seasonal Indian Fruits.png',
      'title': 'Seasonal Indian Fruits'
    },
    {
      'image': 'assets/images/Breakfast Fruits.png',
      'title': 'Breakfast Fruits'
    },
    {
      'image': 'assets/images/Lemon & Coriander.png',
      'title': 'Lemon & Coriander'
    },
    {
      'image': 'assets/images/Seasonal Vegetables.png',
      'title': 'Seasonal Vegetables'
    },
  ];

  List<dynamic> item = [
    'All',
    'Apple',
    'Grapes',
    'Banana',
    'Onion',
    'Potato',
    'Tomato',
    'Papaya',
    'Garlic'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              searchfieldbar(context),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  itemCount: fruitcategory.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 32,
                            child: Image.asset(fruitcategory[index]['image']),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            width: 64,
                            child: Text(
                              fruitcategory[index]['title'],
                              style: GoogleFonts.poppins(
                                  fontSize: 9, fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    decoration: const BoxDecoration(color: Color(0xffF3F3F3)),
                  )),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.asset('assets/images/banner.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(45.0),
                    child: Text('Fresh Fruit',
                        style: GoogleFonts.poppins(
                            fontSize: 22, fontWeight: FontWeight.w400)),
                  )
                ],
              ),
              SizedBox(
                height: 35,
                child: ListView.builder(
                  itemCount: item.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 52,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xffF0F1F2),
                            borderRadius: BorderRadius.circular(2)),
                        child: Center(
                            child: Text(
                          item[index],
                          style: GoogleFonts.poppins(
                              fontSize: 9, fontWeight: FontWeight.w500),
                        )),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // fruitcat(context),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: fruitcategoryitem.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return fruitcat(context, index);
                  },
                ),
              )
            ],
          ),
        ));
  }
}

Widget searchfieldbar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 8),
    child: Container(
      decoration: BoxDecoration(
          color: const Color(0xffF0F1F2),
          borderRadius: BorderRadius.circular(10)),
      height: 52,
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 8),
          const Icon(Icons.search),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
              child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              border: InputBorder.none,
              hintText: 'Search Anything',
            ),
          )),
          Container(
            // width: 81,
            height: 30,
            padding: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2), color: Colors.white),
            child: const Padding(
              padding: EdgeInsets.only(left: 8),
              child: DropdownButtonExample(),
            ),
          ),
        ],
      ),
    ),
  );
}

List<String> list = <String>['Jaipur', 'Jhotwara', 'vaishali'];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down),
      style: const TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
      underline: Container(),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: GoogleFonts.poppins(
                fontSize: 12, fontWeight: FontWeight.normal),
          ),
        );
      }).toList(),
    );
  }
}

Widget fruitcat(BuildContext context, int index) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xffF0F1F2),
          ),
          width: 118,
          height: 109,
          child: ClipRRect(
            child: fruitcategoryitem[index]['showOffer']
                ? Banner(
                    message: fruitcategoryitem[index]['offer'],
                    location: BannerLocation.topStart,
                    color: const Color(0xff0B4619),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(26.0),
                              child: Image.asset(
                                fruitcategoryitem[index]['image'],
                                fit: BoxFit.fill,
                                height: 56,
                                width: 57,
                              ),
                            ),
                            // Banner(),
                            const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Color(0xff0B4619),
                                  )
                                  //  Image.asset(
                                  //   'assets/images/heart.png',
                                  //   height: 20,
                                  // ),
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(26.0),
                            child: Image.asset(
                              fruitcategoryitem[index]['image'],
                              fit: BoxFit.fill,
                              height: 56,
                              width: 57,
                            ),
                          ),
                          // Banner(),
                          const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Color(0xff0B4619),
                                )
                                //  Image.asset(
                                //   'assets/images/heart.png',
                                //   height: 20,
                                // ),
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
          ),
        ),
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              fruitcategoryitem[index]['title'],
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                '₹ ${fruitcategoryitem[index]['price']}',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff0B4619)),
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
                        decoration: TextDecoration.lineThrough)),
              ),
            ],
          ),
          Container(
            // width: 81,
            height: 20,
            padding: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: const Color(0xffE8E8E8)),
            child: const Padding(
              padding: EdgeInsets.only(left: 8),
              child: ItemWeight(),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
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
        ],
      ),
      const Spacer(),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: 57,
          height: 26,
          decoration: BoxDecoration(
              color: const Color(0xff0B4619),
              borderRadius: BorderRadius.circular(2)),
          child: Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductView(),
                    ));
              },
              child: Text(
                'ADD',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      )
    ],
  );
}

List<String> itemkg = <String>['1 kg', '2 kg', '3 kg'];

class ItemWeight extends StatefulWidget {
  const ItemWeight({super.key});

  @override
  State<ItemWeight> createState() => _ItemWeightState();
}

class _ItemWeightState extends State<ItemWeight> {
  String dropdownValue = itemkg.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: 16,
        width: 80,
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.keyboard_arrow_down),
          style: const TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
          underline: Container(),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: itemkg.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: GoogleFonts.poppins(
                    fontSize: 8, fontWeight: FontWeight.normal),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
