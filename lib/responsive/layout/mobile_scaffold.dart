import 'package:admin_panel1/responsive/COMPONENTS/contant.dart';
import 'package:flutter/material.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold();

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
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
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  runSpacing: 20.0,
                  spacing: 20.0,
                  children: [
                    Container(
                      constraints: const BoxConstraints(minWidth: 200),
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 43, 22, 234)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "26K",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(-12.4% )",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.white, fontSize: 20),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Text(
                            "Users",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset("assets/images/graph.png")
                        ],
                      ),
                    ),
                    Container(
                      constraints: const BoxConstraints(minWidth: 200),
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 51, 153, 255)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "26K",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(-12.4% )",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.white, fontSize: 20),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Text(
                            "Users",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset("assets/images/blue.png")
                        ],
                      ),
                    ),
                    Container(
                      constraints: const BoxConstraints(minWidth: 200),
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 249, 177, 21)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "26K",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(-12.4% )",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.white, fontSize: 20),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Text(
                            "Users",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset("assets/images/yellow.png")
                        ],
                      ),
                    ),
                    Container(
                      constraints: const BoxConstraints(minWidth: 200),
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 229, 83, 83)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "26K",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(-12.4% )",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.white, fontSize: 20),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Text(
                            "Users",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset("assets/images/graph.png")
                        ],
                      ),
                    )
                    
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
