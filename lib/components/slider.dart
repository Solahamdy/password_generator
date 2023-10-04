import 'package:flutter/material.dart';
class PasswordLengthSlider extends StatelessWidget {
  double length;
  var func;
   PasswordLengthSlider({required this.length,this.func,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('LENGTH : ${length.toInt()}',style: const TextStyle(color: Color(0xff54618a),fontSize: 15)),
        ),
        Container(
          height: 70,
          margin: const EdgeInsets.only(left: 12,right: 12),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            color: const Color(0xff091741),),
          child: Slider(
            value: length,
            max: 20,
            min: 4,
            thumbColor:  Colors.white,
            activeColor: const Color(0xff1577ee),
            inactiveColor: const Color(0xff979797),
            label: length.round().toString(),
            onChanged: func,
          ),
        ),

      ],
    );
  }
}
