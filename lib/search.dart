// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<dynamic> item = [
    'Apple',
    'Grapes',
    'Banana',
    'Onion',
    'Potato',
    'Tomato',
    'Papaya',
    'Garlic'
  ];

  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              searchfieldbar(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Recent Searches',
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                height: 200,
                child: GridView.builder(
                  itemCount: item.length ?? 0,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 79,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xffF0F1F2),
                            borderRadius: BorderRadius.circular(2)),
                        child: Center(child: Text(item[index])),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}

Widget searchfieldbar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
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

          // Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: Container(
          //     width: 90,
          //     height: 30,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(2), color: Colors.white),
          //     child: DropdownButtonExample(),
          //   ),
          // ),
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
