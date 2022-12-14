import 'package:flutter/material.dart';
import 'package:scaffold_class_app/strings.dart';

class InvitePage extends StatefulWidget {
  const InvitePage({super.key});

  @override
  State<InvitePage> createState() => _InvitePageState();
}

class _InvitePageState extends State<InvitePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              Strings.INVITE_DESCRIPTION,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 144,
            height: 48,
            child: ElevatedButton(
              child: Text(
                Strings.INVITE_BUTTON,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                          title: const Text(Strings.INVITE_DIALOG_TITLE),
                          content:
                              const Text(Strings.INVITE_DIALOG_DESCRIPTION),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text(Strings.INVITE_DIALOG_BUTTON))
                          ],
                        ));
              },
            ),
          )
        ],
      )),
    );
  }
}
