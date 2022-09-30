import 'package:flutter/material.dart';
import 'package:scaffold_class_app/strings.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.ABOUT_TITLE),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const SizedBox(
              height: 200,
              child: Placeholder(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                Strings.ABOUT_DESCRIPTION,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                Strings.ABOUT_VERSION,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            )
          ],
        )),
      ),
    );
  }
}
