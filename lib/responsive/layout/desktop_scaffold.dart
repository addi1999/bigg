import 'package:admin_panel1/responsive/COMPONENTS/contant.dart';
import 'package:admin_panel1/screen/dash_board.dart';
import 'package:admin_panel1/uitils/routes.dart';
import 'package:admin_panel1/uitils/tile.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold();

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        //drawer part
        myDrawer,
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                Header(),
                Subtile(),
                Graphtile(),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.drawer);
                },
                child: const Icon(
                  Icons.menu,
                )),
            Text(
              "Dashboard",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black45, fontSize: 20),
            ),
            Text(
              "Users",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black45, fontSize: 20),
            ),
            Text(
              "Settings",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black45, fontSize: 20),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
            ),
            const Icon(CupertinoIcons.bell),
            const Icon(CupertinoIcons.list_bullet_below_rectangle),
            const Icon(CupertinoIcons.envelope_open),
          ],
        ),
      ],
    );
  }
}
