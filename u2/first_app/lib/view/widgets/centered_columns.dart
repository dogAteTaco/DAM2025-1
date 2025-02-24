import 'package:flutter/material.dart';

class CenteredColumns extends StatelessWidget{
  final List<Widget> _columns;
  const CenteredColumns({
    super.key,
    required List<Widget> columns,
  })  : _columns = columns;

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _columns)
        );
  }
}