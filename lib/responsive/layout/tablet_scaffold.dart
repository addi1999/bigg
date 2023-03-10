import 'package:admin_panel1/responsive/COMPONENTS/contant.dart';
import 'package:admin_panel1/screen/dash_board.dart';
import 'package:flutter/material.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold();

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: myDrawer,
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            children: [
              // first 4 boxes in grid

              Container(
                padding: const EdgeInsets.only(top: 30, right: 10),
                child: Column(
                  children: [
                    Container(
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 10,
                        shrinkWrap: true,
                        children: const [
                          MainCard(
                            color: Color.fromARGB(255, 50, 31, 219),
                            text1: '26k',
                            text2: '(-12.4%)',
                            text3: 'Users',
                            image: 'assets/images/graph.png',
                          ),
                          MainCard(
                            color: Color.fromARGB(255, 51, 153, 255),
                            text1: '6.200',
                            text2: '(40.9%)',
                            text3: 'Income',
                            image: 'assets/images/blue.png',
                          ),
                          MainCard(
                            color: Color.fromARGB(255, 249, 177, 1),
                            text1: '2.49%',
                            text2: '(84.7%)',
                            text3: 'Conversion Rate',
                            image: 'assets/images/yellow.png',
                          ),
                          MainCard(
                            color: Color.fromARGB(255, 229, 83, 83),
                            text1: '26k',
                            text2: '(-12.4%)',
                            text3: 'Sessions',
                            image: 'assets/images/red.png',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
