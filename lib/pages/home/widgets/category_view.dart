import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = [
    'Todas',
    'Café da manhã',
    'Almoço',
    'Jantar',
    'Trabalho',
    'Estudos',
  ];

  int selectedCategory = 0;

  void selectForwards() {
    setState(() {
      if (selectedCategory < categories.length - 1) {
        selectedCategory++;
      }
    });
  }

  void selectBackward() {
    setState(() {
      if (selectedCategory > 0) {
        selectedCategory--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: selectBackward,
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        Text(
          categories[selectedCategory].toUpperCase(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.2,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 7,
                color: Colors.black,
                offset: Offset(0, 3),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: selectForwards,
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
