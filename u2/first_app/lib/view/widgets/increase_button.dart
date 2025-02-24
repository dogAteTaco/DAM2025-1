import 'package:flutter/material.dart';

class IncreaseButton extends StatelessWidget {
  final VoidCallback onPressed; 
  final IconData icon; 

  const IncreaseButton({
    super.key,
    required this.onPressed,
    this.icon = Icons.add
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed, 
      icon: Icon(icon), 
    );
  }
}
