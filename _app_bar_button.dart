import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  const AppBarButton({required this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // TODO: Implement navigation/filtering
      },
      style: TextButton.styleFrom(
        foregroundColor: isSelected ? Colors.blue : Colors.grey,
      ),
      child: Text(text),
    );
  }
}
