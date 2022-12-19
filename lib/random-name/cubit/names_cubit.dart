import 'package:bloc/bloc.dart';
import 'package:study_bloc/extension/iterable_extension.dart';

class NamesCubit extends Cubit<String> {
  NamesCubit() : super('');

  final _names = [
    'Foo',
    'Bar',
    'Baz',
  ];

  void pickRandomName() => emit(_names.getRandomElement());
}
