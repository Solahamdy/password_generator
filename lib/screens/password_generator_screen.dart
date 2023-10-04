import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_generator/blocs/password_generator_bloc/password_generator_cubit.dart';
import 'package:password_generator/components/generate_password_button.dart';
import 'package:password_generator/components/generated_password.dart';
import 'package:password_generator/components/password_contents.dart';
import 'package:password_generator/components/password_generator_image.dart';
import 'package:password_generator/components/slider.dart';

class PasswordGenerator extends StatelessWidget {
  const PasswordGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<PasswordGeneratorCubit, PasswordGeneratorState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = PasswordGeneratorCubit.get(context);
          return  Scaffold(backgroundColor: const Color(0xff050f2e),
            body: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PasswordGeneratorImage(),
                 GeneratedPasswordTextField(text: cubit.passwordModel.password),
                PasswordLengthSlider(length: cubit.passwordModel.length,func: cubit.changeLength),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('SETTINGS',style: TextStyle(color: Color(0xff54618a),fontSize: 15 )),
                ),
                PasswordContents(isSwitched: cubit.passwordModel.includeNumbers, text: 'numbers',func: cubit.switchNumbers),
                PasswordContents(isSwitched: cubit.passwordModel.includeLetters, text: 'letters',func: cubit.switchLetters),
                PasswordContents(isSwitched: cubit.passwordModel.includeSymbols, text: 'symbols',func: cubit.switchSymbols),
                const SizedBox(height: 40,),
                 GeneratePasswordButton(func: cubit.generateRandomPassword),
              ],
            ),
          );
        },
      ),
    );
  }
}
