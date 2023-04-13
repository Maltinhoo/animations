import 'package:animations/pages/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;
  const AnimatedListView({super.key, required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Curso',
          image: const AssetImage('assets/images/perfil.png'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: 'Estudar Flutter 2',
          subtitle: 'Curso 2',
          image: const AssetImage('assets/images/perfil.png'),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
