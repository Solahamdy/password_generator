import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_generator/blocs/password_generator_bloc/password_generator_cubit.dart';
import 'package:password_generator/screens/password_generator_screen.dart';
class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => PasswordGeneratorCubit())
    ],
    child: const MaterialApp(home: PasswordGenerator(),));
  }
}
