import 'package:flutter/material.dart';

class ThemeChangeBtn extends StatelessWidget {
  const ThemeChangeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        height: 50,
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.dark_mode)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.light_mode)),
          ],
        ),
      ),
    ]);
  }
}
