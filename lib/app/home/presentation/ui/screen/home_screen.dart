import 'package:flutter/material.dart';

import '../widget/avaliable_company.dart';
import '../widget/avaliable_trip.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const AvailableCompany(),
              const SizedBox(
                height: 20,
              ),
              const AvailableTrip(),
            ],
          ),
        ),
      ],
    ));
  }
}
