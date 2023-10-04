part of 'password_generator_cubit.dart';

@immutable
abstract class PasswordGeneratorState {}

class PasswordGeneratorInitial extends PasswordGeneratorState {}
class ChangeLengthState extends PasswordGeneratorState {}
class NumberSwitchState extends PasswordGeneratorState {}
class LettersSwitchState extends PasswordGeneratorState {}
class SymbolsSwitchState extends PasswordGeneratorState {}
class GeneratePasswordState extends PasswordGeneratorState {}
