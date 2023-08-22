import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDraweIndex = 1;
  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top >
        35; //si supera los 35 podemos deducir que itene notch
    return NavigationDrawer(
        selectedIndex: navDraweIndex,
        onDestinationSelected: (value) {
          setState(() {
            navDraweIndex = value;
          });

          final menuItem = appMenuItems[value];
          context.push(menuItem.link);
          widget.scaffoldKey.currentState?.closeDrawer(); //usamos widget para hacer ref a un atributo del stateful y no del state
        },
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 10),
            child: const Text('Main'),
          ),
          ...appMenuItems.sublist(0, 3).map((item) =>
              NavigationDrawerDestination(
                  icon: Icon(item.icon), label: Text(item.title))),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 10),
            child: const Text('More options'),
          ),
          ...appMenuItems.sublist(3).map((item) => NavigationDrawerDestination(
              icon: Icon(item.icon), label: Text(item.title))),
        ]);
  }
}
