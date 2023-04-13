import 'package:flutter/material.dart';

import 'category_view.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrow;
  const HomeTop({super.key, required this.containerGrow});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * .4,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/background.jpeg'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken),
      )),
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Bem- vindo!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w300,
              shadows: [
                Shadow(
                  blurRadius: 7,
                  color: Colors.black,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            width: containerGrow.value * 140,
            height: containerGrow.value * 140,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/perfil.png'),
                  fit: BoxFit.cover,
                )),
            child: Container(
              width: containerGrow.value * 35,
              height: containerGrow.value * 35,
              margin: const EdgeInsets.only(left: 80),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(80, 210, 194, 1)),
              child: Center(
                  child: Text(
                '2',
                style: TextStyle(
                    fontSize: containerGrow.value * 15,
                    fontWeight: FontWeight.w400),
              )),
            ),
          ),
          const CategoryView()
        ],
      )),
    );
  }
}
