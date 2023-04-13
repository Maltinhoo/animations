import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 160),
      child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Colors.black.withOpacity(.5)),
          ),
          child: const Text(
            'Não possui uma conta? Cadastre-se!',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 15,
              letterSpacing: .5,
              overflow: TextOverflow.ellipsis,
            ),
          )),
    );
  }
}
