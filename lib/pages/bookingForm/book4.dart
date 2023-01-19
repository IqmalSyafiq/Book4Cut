import 'package:book4cut/database/database_query.dart';
import 'package:book4cut/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Book4 extends StatefulWidget {
  const Book4({super.key});

  @override
  State<Book4> createState() => _Book4State();
}

const List<String> list = <String>[
  'Choose a Service',
  'Haircut',
  'Hair Trim',
  'Shave',
  'Beard Trim',
  'Ladies Cut'
      '1 Side Hair Tattoo',
  'Full Hair Tattoo',
  'Hair Wash'
];

DateTime _dateTime = DateTime.now();
TimeOfDay _timeOfDay = TimeOfDay.now();

class _Book4State extends State<Book4> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Hero(
          tag: 'uniqueTag',
          child: Text(
            'Book an appointment',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
      ),

      ///
      ///
      ///
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///
          ///
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
              left: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 251, 251, 251),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'lib/images/barber-shop.png',
                      scale: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Royal Barbershop',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Paragon @ Pan\'gaea, Persiaran Bestari, Cyber 11',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          ///
          ///
          ///Service options
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(20),
                  value: dropdownValue,
                  iconSize: 0,
                  underline: Container(
                    height: 0,
                  ),
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(value),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),

          ///
          ///
          ///
          ///
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                MaterialButton(
                  onPressed: (() {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2027),
                      builder: (context, child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: const ColorScheme.light(
                              primary: Colors.black, // header background color
                              onPrimary: Colors.white, // header text color
                              onSurface: Colors.black, // body text color
                            ),
                            textButtonTheme: TextButtonThemeData(
                              style: TextButton.styleFrom(
                                primary: Colors.red, // button text color
                              ),
                            ),
                          ),
                          child: child!,
                        );
                      },
                    ).then((value) {
                      setState(() {
                        _dateTime = value!;
                      });
                    });
                  }),
                  child: Icon(Icons.calendar_month_outlined),
                ),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                      left: 20,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_dateTime.day.toString()),
                        Text(' - '),
                        Text(_dateTime.month.toString()),
                        Text(' - '),
                        Text(_dateTime.year.toString()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          ///
          ///
          ///
          ///
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                MaterialButton(
                  onPressed: (() {
                    showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      builder: (context, child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: const ColorScheme.light(
                              primary: Colors.black, // header background color
                              onPrimary: Colors.white, // header text color
                              onSurface: Colors.black, // body text color
                            ),
                            textButtonTheme: TextButtonThemeData(
                              style: TextButton.styleFrom(
                                primary: Colors.red, // button text color
                              ),
                            ),
                          ),
                          child: child!,
                        );
                      },
                    ).then((value) {
                      setState(() {
                        _timeOfDay = value!;
                      });
                    });
                  }),
                  child: Icon(Icons.alarm),
                ),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 20,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_timeOfDay.format(context).toString()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Database.addBooking(
                    shopName: "Royal Barbershop",
                    service: dropdownValue,
                    date: _dateTime.toString(),
                    day: _dateTime.day.toString(),
                    month: _dateTime.month.toString(),
                    year: _dateTime.year.toString(),
                    time: _timeOfDay.format(context).toString(),
                    shopImage:
                        'https://images.unsplash.com/photo-1622287162716-f311baa1a2b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJhcmJlcnxlbnwwfDB8MHx8&auto=format&fit=crop&w=800&q=60',
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 60,
                      right: 60,
                    ),
                    child: Text(
                      'Book Appointment',
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
