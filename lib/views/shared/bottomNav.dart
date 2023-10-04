import 'package:flutter/material.dart';

class bottomNavWidget extends StatelessWidget {
  const bottomNavWidget({Key? key, required this.icon, required this.ontap})
      : super(key: key);
  final void Function() ontap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
        height: 30,
        width: 30,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
