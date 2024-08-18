import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppbar extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const MyAppbar({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.bebasNeue(fontSize: 35),
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200, width: 4),
                //color: Colors.grey.shade300,
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.shade500,
                //     blurRadius: 15,
                //     offset: const Offset(4, 4),
                //   ),
                //   BoxShadow(
                //     color: Colors.grey.shade300,
                //     blurRadius: 15,
                //     offset: const Offset(-4, -4),
                //   ),
                // ],
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(Icons.search),
            ),
          )
        ],
      ),
    );
  }
}
