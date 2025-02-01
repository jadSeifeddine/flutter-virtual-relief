import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ProgressChart extends StatelessWidget {
  const ProgressChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: Row(
              children: [
                // Y-Axis Label
                RotatedBox(
                  quarterTurns: -1, // Rotates text vertically
                  child: Text(
                    "Progress Level", // ✅ Added Y-axis label
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(show: true),
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              return Text(
                                value.toString(),
                                style: TextStyle(fontSize: 12),
                              );
                            },
                            reservedSize: 35,
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              return Text(
                                "Day ${value.toInt()}",
                                style: TextStyle(fontSize: 12),
                              );
                            },
                            reservedSize: 30,
                          ),
                        ),
                      ),
                      borderData: FlBorderData(show: true),
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(1, 2),
                            FlSpot(2, 2.7),
                            FlSpot(3, 2.9),
                            FlSpot(4, 3.2),
                            FlSpot(5, 3.8),
                            FlSpot(6, 4.5),
                            FlSpot(7, 4.2),
                          ],
                          isCurved: true,
                          gradient: LinearGradient(
                            colors: [Colors.orange, Colors.deepOrange],
                          ),
                          barWidth: 4,
                          belowBarData: BarAreaData(show: false),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Days", // ✅ X-axis label
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
