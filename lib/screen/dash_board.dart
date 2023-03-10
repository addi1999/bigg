import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final Color color;
  final String text1, text2, text3;
  final String image;
  const MainCard({
    Key? key,
    required this.color,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: color, width: 1)),
      child: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Container(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        text1,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        text2,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      text3,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    image,
                    scale: 1.5,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Subtile extends StatelessWidget {
  const Subtile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, right: 10),
      child: Column(
        children: [
          Container(
            child: GridView.count(
              crossAxisCount: 4,
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
    );
  }
}
