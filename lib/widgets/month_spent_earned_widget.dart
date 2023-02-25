import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:enefty_icons/enefty_icons.dart';

class MonthSpentEarnedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'May 26 - July 26',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white54,
                ),
              ),
              Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white54),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1 Month',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white54,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white54,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              spentEarnedBar(
                EneftyIcons.arrow_up_4_outline,
                'Spent',
                '\$1,460',
                false,
              ),
              const SizedBox(width: 30),
              spentEarnedBar(
                EneftyIcons.arrow_down_2_outline,
                'Earned',
                '\$2,730',
                true,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget spentEarnedBar(
      IconData icon, String title, String valor, bool earned) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(15),
            color: earned ? Colors.lightBlue.shade100 : Colors.white24,
          ),
          child: Icon(
            icon,
            color: earned ? Colors.white : Colors.yellow,
            size: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Colors.white54,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                valor,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
