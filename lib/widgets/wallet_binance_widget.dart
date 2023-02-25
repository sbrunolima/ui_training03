import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';

class WalletBinanceWidget extends StatelessWidget {
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
              'assets/binance.png',
              scale: 20,
            ),
            const SizedBox(height: 15),
            Text(
              'Binance',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'BIN',
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
              width: 140,
              color: Colors.transparent,
              child: LineChart(
                LineChartData(
                  minX: 0,
                  maxX: 5.5,
                  minY: 0,
                  maxY: 3,
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
                        FlSpot(0, 0),
                        FlSpot(0.6, 1),
                        FlSpot(1, 0),
                        FlSpot(1.2, 0.6),
                        FlSpot(1.6, 0.9),
                        FlSpot(1.8, 0.3),
                        FlSpot(2, 1.1),
                        FlSpot(2.2, .8),
                        FlSpot(2.4, 1.2),
                        FlSpot(2.7, 1.3),
                        FlSpot(2.9, 2),
                        FlSpot(3.2, 1),
                        FlSpot(3.4, 1.5),
                        FlSpot(3.9, 1.5),
                        FlSpot(3.9, 1.8),
                        FlSpot(4.5, 1.4),
                        FlSpot(4.9, 2.5),
                      ],
                      isCurved: false,
                      color: Colors.orange,
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
              '\$9.44',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Text(
              '-1.68(137)',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 12,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ],
    );
  }
}
