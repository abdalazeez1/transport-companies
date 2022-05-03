import 'package:flutter/material.dart';

class AvailableCompany extends StatelessWidget {
  const AvailableCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                const Text('company avaliable'),
                const Spacer(),
                TextButton(onPressed: () {}, child: const Text('see more '))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const CircleAvatar(
                      radius: 50,
                    )),
          )
        ],
      ),
    );
  }
}
