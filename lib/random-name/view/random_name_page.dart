import 'package:flutter/material.dart';
import 'package:study_bloc/random-name/cubit/names_cubit.dart';

class RandomNamePage extends StatefulWidget {
  const RandomNamePage({super.key});

  @override
  State<RandomNamePage> createState() => _RandomNamePageState();
}

class _RandomNamePageState extends State<RandomNamePage> {
  late NamesCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = NamesCubit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random Name')),
      body: Center(
        child: StreamBuilder<String?>(
          stream: cubit.stream,
          builder: (context, snapshot) {
            final button = TextButton(
              onPressed: cubit.pickRandomName,
              child: const Text('Pick a random name'),
            );

            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return button;
              case ConnectionState.waiting:
                return button;
              case ConnectionState.active:
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(snapshot.data ?? ''),
                    button,
                  ],
                );
              case ConnectionState.done:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }
}
