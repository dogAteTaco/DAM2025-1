import 'package:flutter/material.dart';

class DecreaseButton extends StatelessWidget {
  final VoidCallback onPressed; 
  final IconData icon; 

  const DecreaseButton({
    super.key,
    required this.onPressed,
    this.icon = Icons.remove
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed, 
      icon: Icon(icon), 
    );
  }
}
