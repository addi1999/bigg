import 'package:admin_panel1/responsive/COMPONENTS/contant.dart';
import 'package:admin_panel1/responsive/layout/desktop_scaffold.dart';
import 'package:admin_panel1/responsive/layout/mobile_scaffold.dart';
import 'package:admin_panel1/responsive/layout/tablet_scaffold.dart';
import 'package:admin_panel1/responsive/resposive_layout.dart';
import 'package:admin_panel1/screen/accordion.dart';
import 'package:admin_panel1/screen/bread.dart';
import 'package:admin_panel1/screen/cards.dart';
import 'package:admin_panel1/screen/carousel.dart';
import 'package:admin_panel1/screen/colors.dart';
import 'package:admin_panel1/screen/typography.dart';
import 'package:admin_panel1/uitils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const ResponsiveLayout(
              mobileScaffold: MobileScaffold(),
              tabletScaffold: TabletScaffold(),
              desktopScaffold: DesktopScaffold(),
            ),
        MyRoutes.drawer: (context) => myDrawer,
        MyRoutes.dashboard: (p0) => const DesktopScaffold(),
        MyRoutes.colors: (p0) => const olorsscreen(),
        MyRoutes.accordion: (p0) => const Accordion(),
        MyRoutes.breadCrumb: (p0) => const breadcreen(),
        MyRoutes.cards: (p0) => const cardsscreen(),
        MyRoutes.carousel: (p0) => const Carouselscreen(),
        MyRoutes.colors: (p0) => const olorsscreen(),
        MyRoutes.typography: (p0) => const Typography1(),
      },
    );
  }
}
