import 'package:flutter/material.dart';

import '../../../../../trips/presentation/ui/widget/detail_text.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({Key? key, this.height = 100}) : super(key: key);
  final double height;

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
      child: Column(
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
    );
  }
}
