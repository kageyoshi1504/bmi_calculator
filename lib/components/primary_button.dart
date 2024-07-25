import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.icon,
    required this.btnName,
    required this.onTap,
  });

  final IconData icon;
  final String btnName;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                // ignore: deprecated_member_use
                color: Theme.of(context).colorScheme.background,
              ),
              const SizedBox(width: 10),
              Text(
                btnName,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    // ignore: deprecated_member_use
                    color: Theme.of(context).colorScheme.background),
              )
            ],
          ),
        ),
      ),
    );
  }
}
