import 'package:bmi_app/controllers/theme_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeChangeBtn extends StatelessWidget {
  const ThemeChangeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeControllers themeControllers = Get.put(ThemeControllers());
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        height: 50,
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: GestureDetector(
          onTap: () {
            themeControllers.changeTheme();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.light_mode,
                color: themeControllers.isDark.value
                    ? Theme.of(context).colorScheme.onSecondaryContainer
                    : Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 20),
              Icon(
                Icons.dark_mode,
                color: themeControllers.isDark.value
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onSecondaryContainer,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
