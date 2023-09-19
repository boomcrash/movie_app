import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(Icons.movie_outlined, color: colors.primary),
            const SizedBox(
              width: 5,
            ),
            Text(
              'CinemaTon',
              style: titleStyle,
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.search))
          ],
        ),
      ),
    );
  }
}
