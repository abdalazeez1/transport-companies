import 'package:flutter/material.dart';

import '../widget/custome_text_field.dart';
import '../widget/trip_widget.dart';

class TripsScreen extends StatelessWidget {
  TripsScreen({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 30),
      child: Column(
        children: [
          CustomTextField(controller: _controller),
          Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) => TripWidget(
                        statusTrip: index == 0
                            ? StatusTrip.checkIn
                            : index % 2 == 0
                                ? StatusTrip.finished
                                : StatusTrip.available,
                      )))
        ],
      ),
    ));
  }
}
