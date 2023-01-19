import 'package:book4cut/pages/bookingForm/book3.dart';
import 'package:book4cut/widgets/service_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shop3 extends StatelessWidget {
  const Shop3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'New Look Saloon',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Book3(),
            ),
          );
        }),
        backgroundColor: Colors.black,
        icon: Icon(Icons.add),
        label: Text(
          'Book Appointment',
          style: GoogleFonts.poppins(
            fontSize: 12,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///banner image
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                child: Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1622288432450-277d0fef5ed6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJhcmJlcnxlbnwwfDB8MHx8&auto=format&fit=crop&w=800&q=60',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 205,
                      left: 100,
                      right: 100,
                    ),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 25,
                right: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'lib/images/marker2.png',
                    height: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 310,
                    height: 50,
                    child: Text(
                      '58G, Lingkaran Cyber Point Barat, Neo Cyber, 63000 Cyberjaya, Selangor, Malaysia',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///
            ///shop description
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
                left: 25,
                right: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Us',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    child: ListView(
                      children: [
                        Text(
                          'New Look Saloon is considered one of the best and most popular barber shops in Cyberjaya, Malaysia. The barbershop is located on 58G, Lingkaran Cyber Point Barat, Neo Cyber, 63000 Cyberjaya, Selangor, Malaysia and is rated 4.4 out of 5 stars by 108 unique and verified visitors.',
                          style: GoogleFonts.poppins(fontSize: 11),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Services',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  ///
                  ///
                  ///
                  Text(
                    'For Men :',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  const ServiceList(
                    service: 'Haircut',
                    servicePrice: 'RM25',
                    serviceIcon: 'lib/images/barber-shop.png',
                  ),
                  const ServiceList(
                    service: 'Hair Trim',
                    servicePrice: 'RM15',
                    serviceIcon: 'lib/images/scissors.png',
                  ),
                  const ServiceList(
                    service: 'Shave',
                    servicePrice: 'RM15',
                    serviceIcon: 'lib/images/stylist.png',
                  ),
                  const ServiceList(
                    service: 'Beard Trim',
                    servicePrice: 'RM10',
                    serviceIcon: 'lib/images/razor.png',
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  ///
                  ///
                  Text(
                    'For Women :',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ServiceList(
                    service: 'Ladies Cut',
                    servicePrice: 'RM45',
                    serviceIcon: 'lib/images/scissors.png',
                  ),
                  const ServiceList(
                    service: '1 Side Hair Tattoo',
                    servicePrice: 'RM50',
                    serviceIcon: 'lib/images/barber-shop.png',
                  ),
                  const ServiceList(
                    service: 'Full Hair Tattoo',
                    servicePrice: 'RM100',
                    serviceIcon: 'lib/images/clipper.png',
                  ),
                  const ServiceList(
                    service: 'Hair Wash',
                    servicePrice: 'RM20',
                    serviceIcon: 'lib/images/hair-dryer.png',
                  ),
                ],
              ),
            ),

            ///
            ///service offered
            ///
            ///slots/book now button
          ],
        )),
      ),
    );
  }
}
