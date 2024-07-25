import 'package:flutter/material.dart';

class SecBtn extends StatelessWidget {
  const SecBtn({
    super.key,
    required this.icon, required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          color: Theme.of(context).colorScheme.primaryContainer,
          size: 20,
        ),
      ),
    );
  }
}
