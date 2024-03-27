import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/components/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_outlined,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(text: "HOME", icon: Icons.home, onTap: () {}),
          MyDrawerTile(text: "SETTING", icon: Icons.settings, onTap: () {}),
          const Spacer(),
          MyDrawerTile(text: "LOG OUT", icon: Icons.logout, onTap: () {}),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
