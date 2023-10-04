import 'package:flutter/material.dart';
class GeneratedPasswordTextField extends StatelessWidget {
  final String text ;
   GeneratedPasswordTextField({required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Text('Generated Password',style: TextStyle(
              color: Color(0xff54618a), fontSize: 15),),
        ),
        Container(
          height: 100,
           decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
               color: const Color(0xff091741),
           ),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.only(left: 12,right: 12),
          child: Center(
            child: TextFormField(
              enabled: false,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: text , hintStyle:const TextStyle(color: Colors.white ,fontSize: 30),
                border: InputBorder.none, // Hide the default border
                disabledBorder: InputBorder.none, // Hide the border when disabled
              ),
            ),
          ),
        )
      ],
    );
  }
}