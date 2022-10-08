import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scaffold_class_app/extensions/extension_string.dart';
import 'package:scaffold_class_app/mocks/mock_users.dart';
import 'package:scaffold_class_app/model/user_credential.dart';
import 'package:scaffold_class_app/strings.dart';
import 'package:scaffold_class_app/ui/pages/home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String _email = "";
  String _password = "";

  UserCredential? _userCredential;

  bool _canShowPassword = false;

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.green[800]));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.04),
                  Text(
                    Strings.LOGIN_TITLE,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: height * 0.04),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: Strings.LOGIN_FORM_EMAIL_LABEL,
                      hintText: Strings.LOGIN_FORM_EMAIL_HINT,
                    ),
                    validator: ((value) {
                      if (!value!.isValidEmail) {
                        return Strings.LOGIN_FORM_EMAIL_ERROR;
                      }
                      return null;
                    }),
                    onSaved: (newValue) => _email = newValue!,
                  ),
                  SizedBox(height: height * 0.04),
                  TextFormField(
                    obscureText: !_canShowPassword,
                    decoration: InputDecoration(
                        labelText: Strings.LOGIN_FORM_PASSWORD_LABEL,
                        hintText: Strings.LOGIN_FORM_PASSWORD_HINT,
                        helperText: Strings.LOGIN_FORM_PASSWORD_HELPER,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _canShowPassword = !_canShowPassword;
                            });
                          },
                          icon: Icon(_canShowPassword
                              ? Icons.visibility
                              : Icons.visibility_off),
                        )),
                    validator: ((value) {
                      if (!value!.isValidPassword) {
                        return Strings.LOGIN_FORM_PASSWORD_ERROR;
                      }
                      return null;
                    }),
                    onSaved: (newValue) => _password = newValue!,
                  ),
                  SizedBox(height: height * 0.08),
                  SizedBox(
                    width: double.maxFinite,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();

                          _userCredential = MockUsers.getUsers()
                              .firstWhereOrNull((element) =>
                                  element.email == _email &&
                                  element.password == _password);

                          if (_userCredential != null) {
                            navigateToHome();
                          } else {
                            showLoginFailedDialog();
                          }
                        }
                      },
                      child: const Text(Strings.LOGIN_BUTTON_ENTER),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showLoginFailedDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text(Strings.LOGIN_DIALOG_AUTH_FAILED_TITLE),
              content: const Text(Strings.LOGIN_DIALOG_AUTH_FAILED_DESCRIPTION),
              actionsAlignment: MainAxisAlignment.center,
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(Strings.LOGIN_DIALOG_AUTH_FAILED_BUTTON))
              ],
            ));
  }

  void navigateToHome() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const HomePage(),
        settings: RouteSettings(arguments: _userCredential)));
  }
}
