import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class GraphWidget extends StatefulWidget {
  @override
  State<GraphWidget> createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 6,
              minY: 0,
              maxY: 5,
              titlesData: FlTitlesData(
                show: true,
                rightTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 30,
                    interval: 1,
                    getTitlesWidget: bottomTitleWidgets,
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: leftTitleWidgets,
                    reservedSize: 32,
                  ),
                ),
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 0.01),
                    FlSpot(0.5, 1),
                    FlSpot(0.5, 1.85),
                    FlSpot(0.95, 2),
                    FlSpot(1, 2.15),
                    FlSpot(1.2, 2.28),
                    FlSpot(1.25, 2.49),
                    FlSpot(1.4, 2.53),
                    FlSpot(1.45, 2.35),
                    FlSpot(1.66, 2.4),
                    FlSpot(1.8, 2.65),
                    FlSpot(2, 2.65),
                    FlSpot(2.1, 2.8),
                    FlSpot(2.35, 2.85),
                    FlSpot(2.5, 3.35),
                    FlSpot(2.65, 3.6),
                    FlSpot(2.7, 3.1),
                    FlSpot(2.8, 3.5),
                    FlSpot(2.95, 3.5),
                    FlSpot(3.15, 3.3),
                    FlSpot(3.3, 3.4),
                    FlSpot(3.4, 3.3),
                    FlSpot(3.4, 2),
                    FlSpot(3.6, 3.3),
                    FlSpot(3.66, 3.25),
                    FlSpot(3.71, 3.1),
                    FlSpot(3.8, 3.25),
                    FlSpot(4.4, 2.5),
                    FlSpot(4.4, 2.8),
                    FlSpot(4.7, 2.3),
                    FlSpot(4.8, 2.85),
                    FlSpot(4.85, 2.5),
                    FlSpot(4.95, 2.85),
                    FlSpot(5.3, 2.5),
                    FlSpot(5.3, 2.7),
                    FlSpot(5.4, 2.65),
                    FlSpot(5.55, 2.8),
                    FlSpot(5.7, 2.78),
                    FlSpot(5.8, 3),
                    FlSpot(5.9, 2.9),
                    FlSpot(6, 3.1),
                    FlSpot(6.1, 3),
                    FlSpot(6.2, 3),
                    FlSpot(6.3, 3.1),
                    FlSpot(6.5, 3),
                    FlSpot(6.5, 3.2),
                    FlSpot(6.6, 3),
                    FlSpot(6.6, 3.4),
                    FlSpot(6.75, 2.9),
                  ],
                  isCurved: false,
                  color: Colors.lightBlue,
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.white10,
                  ),
                  dotData: FlDotData(show: false),
                ),
              ],
              gridData: FlGridData(
                show: true,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: Colors.white54,
                    strokeWidth: 0.1,
                  );
                },
                getDrawingVerticalLine: (value) {
                  return FlLine(
                    color: Colors.transparent,
                    strokeWidth: 1,
                  );
                },
              ),
              borderData: FlBorderData(
                show: false,
                border: Border.all(color: Colors.white54),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 10,
      color: Colors.white24,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('Jul 22', style: style);
        break;
      case 2:
        text = const Text('Jul 23', style: style);
        break;
      case 3:
        text = const Text('Jul 24', style: style);
        break;
      case 4:
        text = const Text('Jul 25', style: style);
        break;
      case 5:
        text = const Text('Jul 26', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 12,
      color: Colors.white24,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '\$0';
        break;
      case 1:
        text = '\$150';
        break;
      case 2:
        text = '\$175';
        break;
      case 3:
        text = '\$200';
        break;
      case 4:
        text = '\$225';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }
}
