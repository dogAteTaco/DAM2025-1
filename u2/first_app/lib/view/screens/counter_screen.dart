import 'package:first_app/view/widgets/centered_columns.dart';
import 'package:first_app/view/widgets/counter_display.dart';
import 'package:first_app/view/widgets/floating_counter_column.dart';
import 'package:first_app/viewmodel/counter_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    final counterViewModel = Provider.of<CounterViewModel>(context);
    const String screenTitle = "Counter Screen";

    return Scaffold(
        appBar: AppBar(
          title: const Text(screenTitle),
          leading: IconButton(
              onPressed: counterViewModel.resetCounter,
              icon: const Icon(Icons.refresh_rounded)),
        ),
        body: CenteredColumns(columns: [
          CounterDisplay(counterValue: counterViewModel.counterValue)
        ]),
        floatingActionButton:
            FloatingCounterColumn(viewModel: counterViewModel));
  }
}
