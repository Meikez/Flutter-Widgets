import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter screen'),
        actions: [
          IconButton(onPressed: () {
            ref.read(isDarkModeProvider.notifier).update((state) => !isDarkMode);
            }, 
          icon: !isDarkMode ? const Icon(Icons.dark_mode_outlined): const Icon(Icons.light_mode_outlined),
           )
        ],
      ),
      body: Center(
        child: Text(
          'Valor:$clickCounter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref
              .read(counterProvider.notifier)
              .state++; // no usar watch en metodos
          //ref.read(counterProvider.notifier).update((state) => state + 1); version 2

          
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}