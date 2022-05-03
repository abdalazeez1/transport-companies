import 'package:flutter/material.dart';

class DetailText extends StatelessWidget {
  const DetailText({
    Key? key,
    required this.fromText,
    required this.toText,
  }) : super(key: key);
  final String fromText;
  final String toText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
              text: fromText,
              style: DefaultTextStyle.of(context).style.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            TextSpan(
              text: toText,
            )
          ],
        ),
      ),
    );
  }
}
