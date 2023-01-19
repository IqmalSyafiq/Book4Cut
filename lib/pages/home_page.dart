import 'package:book4cut/pages/appointment.dart';
import 'package:book4cut/pages/shops/shop1.dart';
import 'package:book4cut/pages/shops/shop2.dart';
import 'package:book4cut/pages/shops/shop3.dart';
import 'package:book4cut/pages/shops/shop4.dart';
import 'package:book4cut/widgets/shop_list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        drawer: const CustomDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //top tiltle
            Padding(
              padding: const EdgeInsets.only(
                top: 130,
                left: 20,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'It\'s time to book',
                      style: GoogleFonts.poppins(
                          fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'your next haircut',
                      style: GoogleFonts.poppins(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    ),

                    ///
                    ///
                    ///
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                children: [
                  ///button 1
                  GestureDetector(
                    onTap: () {
                      _signUserOut();
                    },
                    child: Container(
                      width: 110,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'NEARBY',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Image.asset(
                              'lib/images/marker.png',
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                  ///
                  ///
                  ///button 2
                  Container(
                    width: 110,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'SEARCH',
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          Image.asset(
                            'lib/images/search.png',
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///
                  ///
                  ///
                ],
              ),
            ),

            ///
            ///
            Container(
              height: 330,
              child: PageView(
                padEnds: true,
                controller: PageController(
                  viewportFraction: 0.9,
                  initialPage: 0,
                ),
                children: [
                  ShopListCard(
                    shopImage:
                        'https://images.unsplash.com/photo-1621605815971-fbc98d665033?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YmFyYmVyfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
                    shopLogo: 'lib/images/barber-shop.png',
                    shopName: 'Joe\'s Barbershop',
                    shopAddress: 'Lingkaran Cyber Point Timur, Cyberjaya',
                    shopRoute: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Shop1(),
                        ),
                      );
                    },
                  ),
                  ShopListCard(
                    shopImage:
                        'https://images.unsplash.com/photo-1596362601603-b74f6ef166e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJhcmJlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
                    shopLogo: 'lib/images/barber-shop.png',
                    shopName: 'Maharaj Hair Saloon',
                    shopAddress: 'Taman Putra Perdana, Puchong',
                    shopRoute: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Shop2(),
                        ),
                      );
                    },
                  ),
                  ShopListCard(
                    shopImage:
                        'https://images.unsplash.com/photo-1622288432450-277d0fef5ed6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJhcmJlcnxlbnwwfDB8MHx8&auto=format&fit=crop&w=800&q=60',
                    shopLogo: 'lib/images/barber-shop.png',
                    shopName: 'New Look Saloon',
                    shopAddress: 'Lingkaran Cyber Point Barat, Cyberjaya',
                    shopRoute: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Shop3(),
                        ),
                      );
                    },
                  ),
                  ShopListCard(
                    shopImage:
                        'https://images.unsplash.com/photo-1622287162716-f311baa1a2b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJhcmJlcnxlbnwwfDB8MHx8&auto=format&fit=crop&w=800&q=60',
                    shopLogo: 'lib/images/barber-shop.png',
                    shopName: 'Royal Barbershop',
                    shopAddress: 'Persiaran Bestari, Cyberjaya',
                    shopRoute: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Shop4(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            ///
            ///

            const SizedBox(
              height: 40,
            ),

            Center(
                child: TextButton(
                    onPressed: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Appointment(),
                        ),
                      );
                    }),
                    child: Text(
                      'See your booking list',
                      style: GoogleFonts.poppins(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    )))

            ///
            ///
            ///
          ],
        ));
  }
}
