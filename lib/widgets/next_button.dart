import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onTap;

  const NextButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green[300],
      ),
      child: TextButton(
        onPressed: onTap,
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
