import 'package:flutter/material.dart';
class GeneratePasswordButton extends StatelessWidget {
  var func ;
   GeneratePasswordButton({this.func,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(right: 10,left: 10),
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
      gradient:  const LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.center,
        colors: [Color(0xff4745eb), Color(0xff167af6)],
      ),
      ),
      child: MaterialButton(
          onPressed: func,
          child: const Text('GENERATE PASSWORD',style: TextStyle(
              fontSize: 25,color: Colors.white))),
    );
  }
}
