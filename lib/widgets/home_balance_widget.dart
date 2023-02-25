import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBalanceEidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '12.670,90',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 53,
              ),
            ),
            RotationTransition(
              turns: const AlwaysStoppedAnimation(90 / 360),
              child: Text(
                'USD',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 14,
                  color: Colors.white54,
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\$9839.8',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.white54,
              ),
            ),
            const SizedBox(width: 15),
            Text(
              '+8,1%',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
