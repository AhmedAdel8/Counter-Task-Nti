import 'package:flutter/material.dart';

class CircleAvatarCounter extends StatelessWidget {
  CircleAvatarCounter({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  Icon icon;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 50,
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
