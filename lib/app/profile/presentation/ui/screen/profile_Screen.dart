import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text('name : abd ')
            ],
          ),
          Row(
            children: const [
              TabWidget(text: 'trip', number: 12),
              TabWidget(text: 'check ', number: 34),
              TabWidget(text: 'canceled', number: 33),
            ],
          )
        ],
      ),
    ));
  }
}

class TabWidget extends StatelessWidget {
  const TabWidget({Key? key, required this.text, required this.number})
      : super(key: key);
  final int number;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.withOpacity(.2)),
            color: Colors.blue.withOpacity(.2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number.toString()),
            Text(text),
          ],
        ),
      ),
    );
  }
}
