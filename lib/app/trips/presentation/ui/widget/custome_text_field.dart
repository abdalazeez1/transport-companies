import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    String? label,
    TextEditingController? controller,
  })  : _controller = controller,
        _label = label,
        super(key: key);

  final TextEditingController? _controller;
  final String? _label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
          label: Text(_label ?? ''),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}
