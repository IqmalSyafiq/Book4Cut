import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceList extends StatelessWidget {
  final String service;
  final String servicePrice;
  final String serviceIcon;
  const ServiceList({
    super.key,
    required this.service,
    required this.servicePrice,
    required this.serviceIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 201, 188, 171),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(serviceIcon),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(service),
              ],
            ),
            Text(
              servicePrice,
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
