import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../root/presentation/state/root_provider.dart';
import '../../../../trips/presentation/ui/widget/trip_widget.dart';

class AvailableTrip extends StatelessWidget {
  const AvailableTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                const Text('available trip '),
                const Spacer(),
                Consumer<RootProvider>(builder: (context, provider, child) {
                  return TextButton(
                      onPressed: () {
                        provider.moveToPage(2);
                      },
                      child: const Text('see more '));
                })
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  itemCount: 2,
                  itemBuilder: (context, index) => const TripWidget())),
        ],
      ),
    );
  }
}
