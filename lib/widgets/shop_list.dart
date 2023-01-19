import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopListCard extends StatelessWidget {
  final String shopName;
  final String shopAddress;
  final String shopImage;
  final String shopLogo;
  final shopRoute;

  const ShopListCard(
      {super.key,
      required this.shopName,
      required this.shopAddress,
      required this.shopImage,
      required this.shopLogo,
      this.shopRoute});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 0,
        left: 0,
        right: 8,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.network(
                shopImage,
                fit: BoxFit.cover,
                height: 150,
                width: 400,
              ),
            ),

            ///
            const SizedBox(
              height: 20,
            ),

            ///
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 251, 251, 251),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        shopLogo,
                        scale: 15,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shopName,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        shopAddress,
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
            ///
            const SizedBox(
              height: 30,
            ),

            ///
            ///
            ///
            ///
            GestureDetector(
              onTap: shopRoute,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 15,
                    left: 110,
                    right: 110,
                  ),
                  child: Text(
                    'Discover More',
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),

            ///
            ///

            ///
            ///
          ],
        ),
      ),
    );
  }
}
