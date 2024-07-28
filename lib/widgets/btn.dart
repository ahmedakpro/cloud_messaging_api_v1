import 'package:flutter/material.dart';

class NotifyBtn extends StatelessWidget {
  final String txt;
  final void Function() onTap;
  final Color? color;
  const NotifyBtn(
      {super.key, required this.txt, required this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.sizeOf(context).width / 1.6,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          txt,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
