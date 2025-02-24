import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback onPressed; 
  final IconData icon; 

  const ResetButton({
    super.key,
    required this.onPressed,
    this.icon = Icons.delete
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed, 
      icon: Icon(icon), 
    );
  }
}
