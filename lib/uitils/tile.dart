import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({Key? key}) : super(key: key);

  @override
  _LineChartSample2State createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
    const Color(0xFF000000),
  ];
  List<Color> gradientColor = [
    const Color(0xff000000),
    const Color(0xff23b6e6),
  ];
  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                color: Color(0xffFFFFFF)),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 18.0, left: 12.0, top: 24, bottom: 12),
              child: LineChart(
                showAvg ? avgData() : mainData(),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 60,
          height: 34,
          child: TextButton(
            onPressed: () {
              setState(() {
                showAvg = !showAvg;
              });
            },
            child: Text(
              'avg',
              style: TextStyle(
                  fontSize: 12,
                  color:
                      showAvg ? Colors.black.withOpacity(0.5) : Colors.black),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('JAN', style: style);
        break;
      case 2:
        text = const Text('FEB', style: style);
        break;
      case 3:
        text = const Text('MAR', style: style);
        break;
      case 4:
        text = const Text('APR', style: style);
        break;
      case 5:
        text = const Text('MAY', style: style);
        break;
      case 6:
        text = const Text('JUN', style: style);
        break;
      case 7:
        text = const Text('JUL', style: style);
        break;

      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8.0,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10K';
        break;
      case 3:
        text = '30k';
        break;
      case 5:
        text = '50k';
        break;

      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
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
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(
              color: const Color.fromARGB(255, 19, 149, 255), width: 1)),
      minX: 0,
      maxX: 9,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(8, 3),
            FlSpot(9, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData:
              BarAreaData(show: true, color: Colors.grey[700]!.withOpacity(0.3)
                  // gradient: LinearGradient(
                  //   colors: gradientColors
                  //       .map((color) => color.withOpacity(0.3))
                  //       .toList(),
                  //   begin: Alignment.centerLeft,
                  //   end: Alignment.centerRight,
                  // ),
                  ),
        ),
        LineChartBarData(
          spots: const [
            FlSpot(0, 1),
            FlSpot(2, 2.6),
            FlSpot(4, 5),
            FlSpot(5, 2),
            FlSpot(6, 2),
            FlSpot(8, 3.5),
            FlSpot(9, 3),
          ],
          isCurved: true,
          color: Colors.amber,
          // gradient: LinearGradient(
          //   colors: gradientColor,
          //   begin: Alignment.centerLeft,
          //   end: Alignment.centerRight,
          // ),
          barWidth: 3,
          isStrokeCapRound: false,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: false,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
            interval: 1,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }
}

class Graphtile extends StatelessWidget {
  const Graphtile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 600,
      margin: const EdgeInsets.only(left: 5, top: 12, right: 25, bottom: 20),
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 1.0,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        padding: const EdgeInsets.all(5),
        shrinkWrap: true,
        children: [
          Container(
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: const Color.fromARGB(96, 0, 0, 0), width: 1)),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Traffic",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Jan-July 2022",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 17,
                                  ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Toggle(),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 50, 31, 219),
                          border: Border.all(color: Colors.black54)),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Icons.cloud_download_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const LineChartSample2(),
                const Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Listgraph(
                      text1: "Visits",
                      text2: "29.703 Users (40%)",
                      text3: 0.4,
                      color: Colors.green,
                    ),
                    Listgraph(
                      text1: "Unique",
                      text2: "24.093 Users (20%)",
                      text3: 0.2,
                      color: Colors.blue,
                    ),
                    Listgraph(
                      text1: "Pageviews",
                      text2: "78.706 Views (60%)",
                      text3: 0.6,
                      color: Colors.orange,
                    ),
                    Listgraph(
                      text1: "New Users",
                      text2: "22.123 Users (80%)",
                      text3: 0.8,
                      color: Colors.red,
                    ),
                    Listgraph(
                      text1: "Bounce Rate",
                      text2: "40.15%",
                      text3: .4015,
                      color: Color.fromARGB(255, 5, 93, 165),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Listgraph extends StatelessWidget {
  final String text1, text2;
  final double text3;
  final Color color;
  const Listgraph({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.grey,
                fontSize: 20,
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text2,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 17,
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        LinearPercentIndicator(
          width: MediaQuery.of(context).size.width / 7,
          lineHeight: 5,
          percent: text3,
          animation: true,
          animationDuration: 1500,
          progressColor: color,
          barRadius: const Radius.circular(10),
        ),
      ],
    );
  }
}

class Toggle extends StatefulWidget {
  const Toggle({
    Key? key,
  }) : super(key: key);

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  List<bool> isSelected = [false, true, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black54)),
      child: ToggleButtons(
        isSelected: isSelected,
        selectedColor: Colors.grey,
        color: Colors.black,
        fillColor: Colors.grey[700],
        renderBorder: false,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Day",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Month",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Year",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
        onPressed: (int newindex) {
          setState(() {
            for (int index = 0; index < isSelected.length; index++) {
              if (index == newindex) {
                isSelected[index] = true;
              } else {
                isSelected[index] = false;
              }
            }
          });
        },
      ),
    );
  }
}
