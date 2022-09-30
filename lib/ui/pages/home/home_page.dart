import 'package:flutter/material.dart';
import 'package:scaffold_class_app/strings.dart';
import 'package:scaffold_class_app/ui/pages/home/home_content_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.HOME_TITLE),
      ),
      drawer: Drawer(
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
              selected: true,
              leading: const Icon(Icons.home),
              title: const Text(Strings.HOME_DRAWER_HOME),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text(Strings.HOME_DRAWER_CATEGORIES),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.people_alt),
              title: const Text(Strings.HOME_DRAWER_INVITE),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text(Strings.HOME_DRAWER_ABOUT),
              onTap: () {},
            )
          ],
        ),
      ),
      body: const HomeContentPage(),
    );
  }
}
