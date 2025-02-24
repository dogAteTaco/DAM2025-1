import 'package:first_app/view/widgets/decrease_button.dart';
import 'package:first_app/view/widgets/increase_button.dart';
import 'package:first_app/view/widgets/reset_button.dart';
import 'package:first_app/viewmodel/counter_viewmodel.dart';
import 'package:flutter/material.dart';

class FloatingCounterColumn extends StatelessWidget{
  final CounterViewModel _viewModel;
  const FloatingCounterColumn({
    super.key,
    required CounterViewModel viewModel,
  })  : _viewModel = viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IncreaseButton(onPressed: _viewModel.increaseCounter),
          DecreaseButton(onPressed: _viewModel.decreaseCounter),
          ResetButton(onPressed: _viewModel.resetCounter)
        ]);
  }
}