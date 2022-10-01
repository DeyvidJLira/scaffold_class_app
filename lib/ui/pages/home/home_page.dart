import 'package:flutter/material.dart';
import 'package:scaffold_class_app/strings.dart';
import 'package:scaffold_class_app/ui/pages/home/home_content_page.dart';
import 'package:scaffold_class_app/ui/pages/home/widgets/drawer_menu.dart';
import 'package:scaffold_class_app/ui/pages/invite/invite.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DrawerMenuItem _drawerMenuItemActive = DrawerMenuItem.HOME;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.HOME_TITLE),
      ),
      drawer: DrawerMenu(_drawerMenuItemActive, onChangeContent),
      body: getContentPage(),
    );
  }

  void onChangeContent(DrawerMenuItem drawerMenuItemSelected) {
    setState(() {
      _drawerMenuItemActive = drawerMenuItemSelected;
    });
  }

  Widget getContentPage() {
    switch (_drawerMenuItemActive) {
      case DrawerMenuItem.HOME:
        return const HomeContentPage();
      case DrawerMenuItem.INVITE:
        return const InvitePage();
      default:
        return const HomeContentPage();
    }
  }
}
