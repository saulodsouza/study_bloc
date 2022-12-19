import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => context.go('/counter'),
            child: const Text('Counter'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/random-name'),
            child: const Text('Random Name'),
          ),
        ],
      ),
    );
  }
}
