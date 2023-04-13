import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;
  const InputField(
      {super.key,
      required this.hint,
      required this.obscure,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.4),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.5),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: TextFormField(
          obscureText: obscure,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
              icon: Icon(
                icon,
                color: Colors.white,
              ),
              border: InputBorder.none,
              hintText: hint,
              hintStyle: const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
              contentPadding: const EdgeInsets.only(
                top: 30,
                bottom: 30,
              )),
        ));
  }
}
