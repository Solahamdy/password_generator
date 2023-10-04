import 'package:flutter/material.dart';
class PasswordContents extends StatelessWidget {
  bool isSwitched ;
  String text;
  var func ;
   PasswordContents({required this.isSwitched,required this.text,this.func,super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.only(right: 10,left: 10,bottom: 5,top: 5),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff091741)),
      child: Row(
        children: [
          Text(' Include $text',style: const TextStyle(color: Colors.white,
              fontSize: 25),),
          const Spacer(),
          Switch(
            value: isSwitched,
            onChanged:func,
            activeColor: const Color(0xff167af6),
            inactiveTrackColor:const Color(0xff262e48),
            inactiveThumbColor: const Color(0xffb8bdc9),
          ),
        ],
      ),
    );
  }
}
