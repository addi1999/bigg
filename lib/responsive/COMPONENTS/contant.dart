import 'package:admin_panel1/responsive/COMPONENTS/layout_component.dart';
import 'package:admin_panel1/uitils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var myDrawer = Drawer(
  backgroundColor: const Color.fromARGB(255, 60, 75, 100),
  child: Column(
    children: [
      Container(
        height: 70,
        width: double.infinity,
        color: const Color.fromARGB(255, 45, 55, 79),
        child: DrawerHeader(
          child: Image.asset("assets/images/logoss.png"),
        ),
      ),
      Expanded(
        child: ListView(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Drawer_listtile(
                      text: 'Dashboard',
                      icon: CupertinoIcons.speedometer,
                      ontap: () {
                        Get.toNamed(MyRoutes.dashboard);
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Valuabletext(
                      text: "THEME",
                      ontap: () {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Drawer_listtile1(
                      text: "Colors",
                      icon: CupertinoIcons.drop,
                      ontap: () {
                        Get.toNamed(MyRoutes.colors);
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Drawer_listtile1(
                      text: "Typography",
                      icon: CupertinoIcons.pen,
                      ontap: () {
                        Get.toNamed(MyRoutes.typography);
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Valuabletext(
                      text: "COMPONENTS",
                      ontap: () {},
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AdminmenuItem1(
                      text: "Base",
                      icon: CupertinoIcons.chart_pie,
                      child: [
                        Valuabletext(
                          text: "Accordion",
                          ontap: () {
                            Get.toNamed(MyRoutes.accordion);
                          },
                        ),
                        Valuabletext(
                          text: "BreadCrumb",
                          ontap: () {
                            Get.toNamed(MyRoutes.breadCrumb);
                          },
                        ),
                        Valuabletext(
                          text: "Cards",
                          ontap: () {
                            Get.toNamed(MyRoutes.cards);
                          },
                        ),
                        Valuabletext(
                          text: "Carousel",
                          ontap: () {
                            Get.toNamed(MyRoutes.carousel);
                          },
                        ),
                        Valuabletext(
                          text: "Collapse",
                          ontap: () {
                            Get.toNamed(MyRoutes.carousel);
                          },
                        ),
                        Valuabletext(
                          text: "LIst Group",
                          ontap: () {
                            Get.toNamed(MyRoutes.cards);
                          },
                        ),
                        Valuabletext(
                          text: "Navs &Tabs",
                          ontap: () {
                            Get.toNamed(MyRoutes.dashboard);
                          },
                        ),
                        Valuabletext(
                          text: "Pagination",
                          ontap: () {
                            Get.toNamed(MyRoutes.colors);
                          },
                        ),
                        Valuabletext(
                          text: "Placeholders",
                          ontap: () {
                            Get.toNamed(MyRoutes.typography);
                          },
                        ),
                        Valuabletext(
                          text: "Popovers",
                          ontap: () {
                            Get.toNamed(MyRoutes.accordion);
                          },
                        ),
                        Valuabletext(
                          text: "Scrollspy",
                          ontap: () {
                            Get.toNamed(MyRoutes.breadCrumb);
                          },
                        ),
                        Valuabletext(
                          text: "Spinners",
                          ontap: () {
                            Get.toNamed(MyRoutes.cards);
                          },
                        ),
                        Valuabletext(
                          text: "Tables",
                          ontap: () {
                            Get.toNamed(MyRoutes.cards);
                          },
                        ),
                        Valuabletext(
                          text: "Tooltips",
                          ontap: () {
                            Get.toNamed(MyRoutes.dashboard);
                          },
                        ),
                      ],
                    ),
                    AdminmenuItem1(
                        text: "Buttons",
                        icon: CupertinoIcons.location,
                        child: [
                          Valuabletext(
                            text: "Buttons",
                            ontap: () {
                              Get.toNamed(MyRoutes.colors);
                            },
                          ),
                          Valuabletext(
                            text: "Buttons Group",
                            ontap: () {
                              Get.toNamed(MyRoutes.typography);
                            },
                          ),
                          Valuabletext(
                            text: "Dropdowns",
                            ontap: () {
                              Get.toNamed(MyRoutes.accordion);
                            },
                          )
                        ]),
                    Drawer_listtile1(
                      text: "Charts",
                      icon: CupertinoIcons.chart_pie,
                      ontap: () {
                        Get.toNamed(MyRoutes.breadCrumb);
                      },
                    ),
                    AdminmenuItem1(
                        text: "Forms",
                        icon: CupertinoIcons.doc_plaintext,
                        child: [
                          Valuabletext(
                            text: "From Control",
                            ontap: () {
                              Get.toNamed(MyRoutes.cards);
                            },
                          ),
                          Valuabletext(
                            text: "Select",
                            ontap: () {
                              Get.toNamed(MyRoutes.cards);
                            },
                          ),
                          Valuabletext(
                            text: "Checks and radios",
                            ontap: () {
                              Get.toNamed(MyRoutes.cards);
                            },
                          ),
                          Valuabletext(
                            text: "Range",
                            ontap: () {
                              Get.toNamed(MyRoutes.colors);
                            },
                          ),
                          Valuabletext(
                            text: "Input group",
                            ontap: () {
                              Get.toNamed(MyRoutes.typography);
                            },
                          ),
                          Valuabletext(
                            text: "Floating labels",
                            ontap: () {
                              Get.toNamed(MyRoutes.accordion);
                            },
                          ),
                          Valuabletext(
                            text: "Layout",
                            ontap: () {
                              Get.toNamed(MyRoutes.breadCrumb);
                            },
                          ),
                          Valuabletext(
                            text: "Validation",
                            ontap: () {
                              Get.toNamed(MyRoutes.cards);
                            },
                          ),
                        ]),
                    AdminmenuItem1(
                        text: "Icons",
                        icon: CupertinoIcons.star,
                        child: [
                          Drawer_listtile(
                            text: "CoreUI Icons",
                            icon: CupertinoIcons.speedometer,
                            ontap: () {
                              Get.toNamed(MyRoutes.cards);
                            },
                          ),
                          Valuabletext(
                            text: "CoreUI Icons - Brand",
                            ontap: () {
                              Get.toNamed(MyRoutes.dashboard);
                            },
                          ),
                          Valuabletext(
                            text: "CoreUI Icons - Flag",
                            ontap: () {
                              Get.toNamed(MyRoutes.colors);
                            },
                          ),
                        ]),
                    AdminmenuItem1(
                        text: "Notification",
                        icon: CupertinoIcons.bell,
                        child: [
                          Valuabletext(
                            text: "Alerts ",
                            ontap: () {
                              Get.toNamed(MyRoutes.typography);
                            },
                          ),
                          Valuabletext(
                            text: "Badge",
                            ontap: () {
                              Get.toNamed(MyRoutes.accordion);
                            },
                          ),
                          Valuabletext(
                            text: "Modals",
                            ontap: () {
                              Get.toNamed(MyRoutes.breadCrumb);
                            },
                          ),
                          Valuabletext(
                            text: "Toasta",
                            ontap: () {
                              Get.toNamed(MyRoutes.cards);
                            },
                          )
                        ]),
                    Drawer_listtile(
                      text: "Widgets",
                      icon: CupertinoIcons.calendar,
                      ontap: () {
                        Get.toNamed(MyRoutes.cards);
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Valuabletext(
                      text: "EXTRAS",
                      ontap: () {
                        Get.toNamed(MyRoutes.dashboard);
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AdminmenuItem1(
                        text: "Pages",
                        icon: CupertinoIcons.star,
                        child: [
                          Drawer_listtile1(
                            text: "Login",
                            icon: CupertinoIcons.arrow_uturn_left,
                            ontap: () {
                              Get.toNamed(MyRoutes.colors);
                            },
                          ),
                          Drawer_listtile1(
                            text: "Register",
                            icon: CupertinoIcons.arrow_uturn_left,
                            ontap: () {
                              Get.toNamed(MyRoutes.typography);
                            },
                          ),
                          Drawer_listtile1(
                            text: "Error 404",
                            icon: Icons.bug_report,
                            ontap: () {
                              Get.toNamed(MyRoutes.accordion);
                            },
                          ),
                          Drawer_listtile1(
                            text: "Error 500",
                            icon: Icons.bug_report,
                            ontap: () {
                              Get.toNamed(MyRoutes.breadCrumb);
                            },
                          ),
                        ]),
                    Drawer_listtile1(
                      text: "Docs",
                      icon: CupertinoIcons.doc_text,
                      ontap: () {
                        Get.toNamed(MyRoutes.cards);
                      },
                    ),
                    Drawer_listtile1(
                      text: "TryCoreUIPRO",
                      icon: CupertinoIcons.layers_alt,
                      ontap: () {
                        Get.toNamed(MyRoutes.cards);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
