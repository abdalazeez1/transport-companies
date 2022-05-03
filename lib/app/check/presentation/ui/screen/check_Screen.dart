import 'package:flutter/material.dart';
import 'package:transport_companies/app/check/presentation/ui/screen/widget/check_widget.dart';
import 'package:transport_companies/app/root/presentation/state/root_provider.dart';

class CheckScreen extends StatelessWidget {
  const CheckScreen({Key? key, required this.provider}) : super(key: key);
  final RootProvider provider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(.8)),
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('you don\'t have check yet'),
                    TextButton(
                      onPressed: () {
                        provider.moveToPage(2);
                      },
                      child: const Text(
                        'enroll now',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('last check '),
                  ),
                  Expanded(
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) => const CheckWidget()),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
