import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';

class WalletBitcoinWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/bitcoin.png',
              scale: 32,
            ),
            const SizedBox(height: 15),
            Text(
              'Bitcoin',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'BTC',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Colors.white,
              ),
            )
          ],
        ),
        const SizedBox(width: 20),
        Column(
          children: [
            const SizedBox(height: 30),
            Container(
              height: 70,
              width: 150,
              color: Colors.transparent,
              child: LineChart(
                LineChartData(
                  minX: 0,
                  maxX: 6.5,
                  minY: 0,
                  maxY: 4,
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    bottomTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    leftTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 0.5),
                        FlSpot(0.6, 1.4),
                        FlSpot(0.9, 1),
                        FlSpot(1.2, 1.5),
                        FlSpot(1.4, 1.1),
                        FlSpot(1.5, 1.6),
                        FlSpot(1.8, 0.5),
                        FlSpot(2.1, 1),
                        FlSpot(2.6, 1),
                        FlSpot(3, 2.7),
                        FlSpot(3.1, 2.3),
                        FlSpot(3.5, 3.6),
                        FlSpot(3.5, 3.6),
                        FlSpot(3.7, 3),
                        FlSpot(4.1, 3.3),
                        FlSpot(4.3, 2),
                        FlSpot(4.5, 3),
                        FlSpot(4.7, 1.4),
                        FlSpot(5, 3.2),
                        FlSpot(5.1, 3),
                        FlSpot(5.3, 4),
                        FlSpot(5.4, 2.5),
                        FlSpot(5.6, 3.5),
                        FlSpot(5.7, 2),
                        FlSpot(5.9, 3.8),
                        FlSpot(6.1, 3.4),
                        FlSpot(6.5, 3.4),
                      ],
                      isCurved: false,
                      color: Colors.yellow,
                      dotData: FlDotData(show: false),
                    ),
                  ],
                  gridData: FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\$25.30',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Text(
              '+1.68(137)',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 12,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ],
    );
  }
}
