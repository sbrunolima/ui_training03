import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';

class WalletEthereumWidget extends StatelessWidget {
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
              'assets/ethereum.png',
              scale: 35,
            ),
            const SizedBox(height: 15),
            Text(
              'Ethereum',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'ETH',
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
              width: 110,
              color: Colors.transparent,
              child: LineChart(
                LineChartData(
                  minX: 0,
                  maxX: 5.5,
                  minY: 0,
                  maxY: 3.5,
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
                        FlSpot(0, 1),
                        FlSpot(0, 0),
                        FlSpot(.5, .6),
                        FlSpot(.7, .3),
                        FlSpot(1.7, 2),
                        FlSpot(2, 2),
                        FlSpot(2.5, 2.5),
                        FlSpot(3, 2.5),
                        FlSpot(3.2, 3),
                        FlSpot(3.2, 2.4),
                        FlSpot(4, 3),
                        FlSpot(4.2, 2.1),
                        FlSpot(4.5, 3.3),
                        FlSpot(4.7, 2.9),
                        FlSpot(5, 3.7),
                        FlSpot(5.5, 3.3),
                      ],
                      isCurved: false,
                      color: Colors.lightBlue,
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
              '\$13.410',
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
