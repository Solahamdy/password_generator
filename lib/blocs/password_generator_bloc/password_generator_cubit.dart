
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:password_generator/models/password_model.dart';

part 'password_generator_state.dart';

class PasswordGeneratorCubit extends Cubit<PasswordGeneratorState> {
  PasswordGeneratorCubit() : super(PasswordGeneratorInitial());
  static PasswordGeneratorCubit get(context) => BlocProvider.of(context);
  PasswordModel passwordModel = PasswordModel(length: 4, includeNumbers: true, includeLetters: true, includeSymbols: false, password: '');

  void changeLength(value){
    passwordModel.length = value ;
    emit(ChangeLengthState());
  }

  void switchNumbers(value){
    passwordModel.includeNumbers = value ;
    emit(NumberSwitchState());
  }
  void switchLetters(value){
    passwordModel.includeLetters = value ;
    emit(LettersSwitchState());
  }
  void switchSymbols(value){
   passwordModel.includeSymbols = value ;
    emit(SymbolsSwitchState());
  }


  void generateRandomPassword(){
    var randomList ="";
    const chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    const numbers = '1234567890';
    const symbols = '/!#\$%^&*()_+{}-';

    if(passwordModel.includeNumbers){
      randomList += numbers;
    }
    if(passwordModel.includeLetters){
      randomList += chars;
    }
    if(passwordModel.includeSymbols){
      randomList += symbols;
    }

    passwordModel.password = _generateRandomString(passwordModel.length.toInt(), randomList);
    emit(GeneratePasswordState());

  }

  String _generateRandomString(int len, String chars) {
    var r = Random();

    return List.generate(len, (index) => chars[r.nextInt(chars.length)]).join();

  }


}
