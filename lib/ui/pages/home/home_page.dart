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
      body: const HomeContentPage(),
    );
  }
}
