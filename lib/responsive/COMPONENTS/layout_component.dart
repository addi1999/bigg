// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Drawer_listtile extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback ontap;
  const Drawer_listtile({
    Key? key,
    required this.text,
    required this.icon, required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Colors.white54,
              fontSize: 17,
            ),
      ),
      trailing: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.blue),
        child: Text("NEW",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class Drawer_listtile1 extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback ontap;
  const Drawer_listtile1({
    Key? key,
    required this.text,
    required this.icon, required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Colors.white54,
              fontSize: 20,
            ),
      ),
    );
  }
}

class AdminmenuItem1 extends StatelessWidget {
  final List<Widget> child;
  final String text;
  final IconData icon;
  const AdminmenuItem1({
    Key? key,
    required this.child,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        backgroundColor: const Color.fromARGB(255, 45, 55, 79),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        expandedAlignment: Alignment.bottomLeft,
        childrenPadding: const EdgeInsets.only(top: 20, left: 70),
        leading: Icon(
          icon,
          color: Colors.grey,
        ),
        title: Text(text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white54, fontSize: 20)),
        children: child);
  }
}

class Valuabletext extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const Valuabletext({required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        children: [
          Text(text,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white54, fontSize: 20)),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class Valuetext extends StatelessWidget {
  final String text;
  const Valuetext({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: Colors.white70, fontWeight: FontWeight.bold));
  }
}
