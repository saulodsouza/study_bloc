import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_bloc/random-name/cubit/names_cubit.dart';

class RandomNamePage extends StatelessWidget {
  const RandomNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NamesCubit(),
      child: const RandomNameView(),
    );
  }
}

class RandomNameView extends StatelessWidget {
  const RandomNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random Name')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.select((NamesCubit cubit) => cubit.state)),
            ElevatedButton(
              onPressed: context.read<NamesCubit>().pickRandomName,
              child: const Text('Pick a random name'),
            ),
          ],
        ),
      ),
    );
  }
}
