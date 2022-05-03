import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:transport_companies/app/auth/presentation/login/ui/screen/login_screen.dart';

import '../../../../../trips/presentation/ui/widget/custome_text_field.dart';

class SignUpScreen extends StatelessWidget {
  static const routePath = '/sign-up';
  static const routeName = '/sign-up';

  static Page pageBuilder(BuildContext context, GoRouterState state) =>
      MaterialPage(child: const SignUpScreen(), key: state.pageKey);

  const SignUpScreen({Key? key}) : super(key: key);

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
                'Sign  Up ',
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
                  const CustomTextField(label: 'name '),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(label: 'password'),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(label: 'submit password'),
                  //todo  add country
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(16)),
                      child: const Text('SignUp')),
                  TextButton(
                      onPressed: () {
                        context.pushNamed(LoginScreen.routeName);
                      },
                      child: Text('alerady have account '))
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
