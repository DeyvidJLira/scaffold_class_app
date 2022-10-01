// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:scaffold_class_app/strings.dart';
import 'package:scaffold_class_app/ui/pages/about/about_page.dart';
import 'package:scaffold_class_app/ui/pages/categories/categories_page.dart';

class DrawerMenu extends StatefulWidget {
  final DrawerMenuItem _drawerMenuItemActive;
  final Function(DrawerMenuItem) _onChangeContentPage;

  const DrawerMenu(this._drawerMenuItemActive, this._onChangeContentPage,
      {super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            color: Theme.of(context).primaryColor,
            height: 240,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(child: SizedBox()),
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 24,
                  child: Icon(
                    Icons.face,
                    size: 48,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  Strings.HOME_DRAWER_LABEL_WELCOME,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.white),
                ),
                const Expanded(child: SizedBox()),
                SizedBox(
                  height: 48,
                  width: double.maxFinite,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white, width: 2),
                      ),
                      onPressed: () {},
                      child: const Text(Strings.HOME_DRAWER_BUTTON_LOGIN)),
                )
              ],
            ),
          ),
          const Divider(
            height: 2,
            color: Colors.blueGrey,
          ),
          ListTile(
              selected: isDrawerMenuItemTarget(DrawerMenuItem.HOME),
              leading: const Icon(Icons.home),
              title: const Text(Strings.HOME_DRAWER_HOME),
              onTap: () => changeDrawerMenuItem(DrawerMenuItem.HOME)),
          ListTile(
            selected: isDrawerMenuItemTarget(DrawerMenuItem.CATEGORIES),
            leading: const Icon(Icons.list),
            title: const Text(Strings.HOME_DRAWER_CATEGORIES),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const CategoriesPage()));
            },
          ),
          ListTile(
            selected: isDrawerMenuItemTarget(DrawerMenuItem.INVITE),
            leading: const Icon(Icons.people_alt),
            title: const Text(Strings.HOME_DRAWER_INVITE),
            onTap: () => changeDrawerMenuItem(DrawerMenuItem.INVITE),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text(Strings.HOME_DRAWER_ABOUT),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const AboutPage()));
            },
          )
        ],
      ),
    );
  }

  void changeDrawerMenuItem(DrawerMenuItem newItem) {
    widget._onChangeContentPage(newItem);
    Navigator.pop(context);
  }

  bool isDrawerMenuItemTarget(DrawerMenuItem itemTarget) =>
      widget._drawerMenuItemActive == itemTarget;
}

enum DrawerMenuItem { HOME, CATEGORIES, INVITE, ABOUT }
