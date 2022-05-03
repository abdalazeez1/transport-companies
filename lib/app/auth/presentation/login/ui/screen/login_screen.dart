import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../trips/presentation/ui/widget/custome_text_field.dart';

class LoginScreen extends StatelessWidget {
  static const routePath = 'login';
  static const routeName = 'login';

  static Page pageBuilder(BuildContext context, GoRouterState state) =>
      MaterialPage(child: const LoginScreen(), key: state.pageKey);
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              const Center(
                  child: Text(
                'Log in ',
                style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              )),
              const Spacer(flex: 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomTextField(label: 'email '),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(label: 'password'),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(16)),
                      child: const Text('Log in ')),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Sign up instead  '))
                ],
              ),
              const Spacer(flex: 2)
            ],
          ),
        ),
      ),
    );
  }
}
