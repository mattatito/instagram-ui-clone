import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.green],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              )),
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black87),
            child: const CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
              ),
            ),
          ),
        ),
        Text('mattatito', style: TextStyle(color: Colors.white, fontSize: 12),)
      ],
    );
  }
}
