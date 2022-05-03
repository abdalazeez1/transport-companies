import 'package:flutter/material.dart';

import 'detail_text.dart';

enum StatusTrip { available, checkIn, finished }

class TripWidget extends StatelessWidget {
  const TripWidget(
      {Key? key, this.statusTrip = StatusTrip.available, this.height = 150})
      : super(key: key);
  final double height;
  final StatusTrip statusTrip;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.withOpacity(.8)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              DetailText(fromText: 'from:', toText: 'aleppo'),
              DetailText(fromText: 'to:', toText: 'aleppo'),
              DetailText(fromText: 'name company :', toText: 'saraj'),
              DetailText(fromText: 'from carag ::', toText: 'xxxx'),
              DetailText(fromText: 'to carag ::', toText: 'xxxx'),
              DetailText(fromText: 'date::', toText: '12/12/2020'),
            ],
          ),
          const Spacer(),
          getStatus(statusTrip)
        ],
      ),
    );
  }

  Widget getStatus(StatusTrip statusTrip) {
    switch (statusTrip) {
      case StatusTrip.available:
        return Row(
          children: const [
            Icon(
              Icons.event_available,
              color: Colors.grey,
            ),
            SizedBox(
              width: 2,
            ),
            Text('available')
          ],
        );
        break;
      case StatusTrip.checkIn:
        return Row(
          children: const [
            Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
            SizedBox(
              width: 2,
            ),
            Text('checkIn')
          ],
        );
        break;
      case StatusTrip.finished:
        return Row(
          children: [
            Icon(
              Icons.remove_done,
              color: Colors.redAccent.withOpacity(.3),
            ),
            const SizedBox(
              width: 2,
            ),
            const Text('finished')
          ],
        );
    }
  }
}
