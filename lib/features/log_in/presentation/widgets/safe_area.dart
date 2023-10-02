import 'package:flutter/material.dart';

class safArea extends StatelessWidget {
  const safArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 12),
        child: IconButton(
            onPressed: () {}, icon: const Icon(Icons.keyboard_backspace)),
      ),
    );
  }
}
