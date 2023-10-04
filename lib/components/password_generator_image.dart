import 'package:flutter/material.dart';
class PasswordGeneratorImage extends StatelessWidget {
  const PasswordGeneratorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 12,left: 12),
      child: Row(
        children: [
          const Text('Generate Password', style: TextStyle(color: Color(0xffffffff),
          fontSize: 30,fontWeight: FontWeight.bold),),
          const Spacer(),
          Container(
            decoration: BoxDecoration(shape: BoxShape.circle,
                border: Border.all(color: const Color(0xff395ace))),
            child: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/man1.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
