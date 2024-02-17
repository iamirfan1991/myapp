import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  List<Map<dynamic, dynamic>> myorders = [
    {"orderName": "Tamato", "date": "Today 08:00 AM"},
    {"orderName": "Mango", "date": "Yesterday 06:00 PM"},
    {"orderName": "Grapes", "date": "20 Jan 2024 08:00 AM"},
    {"orderName": "Banana", "date": "20 Jan 2024 08:00 AM"},
    {"orderName": "Mango", "date": "Today 08:00 AM"},
    {"orderName": "Mango", "date": "Today 08:00 AM"},
    {"orderName": "Grapes", "date": "Today 08:00 AM"},
    {"orderName": "Tamato", "date": "Today 08:00 AM"},
    {"orderName": "patato", "date": "Today 08:00 AM"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const BackButton(
              color: Colors.white,
            ),
            toolbarHeight: (53),
            backgroundColor: const Color(0xff0B4619),
            title: Center(
                child: Text(
              'My Account',
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffFFFFFF)),
            ))),
        body: ListView.builder(
          itemCount: myorders.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return order(myorders[index]['orderName'], myorders[index]['date']);
          },
        ));
  }
}

Widget order(dynamic title, dynamic value) {
  return ListTile(
    leading: Image.asset('assets/images/user.png'),
    title: Text(
      title,
      style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: const Color(0xff000000)),
    ),
    subtitle: Text(
      value,
      style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: const Color(0xff989898)),
    ),
    trailing: Text(
      'View details >',
      style: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: const Color(0xff0B4619)),
    ),
  );
}
