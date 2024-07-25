import 'package:bmi_app/components/height_selector.dart';
import 'package:bmi_app/components/theme_change_btn.dart';
import 'package:bmi_app/controllers/theme_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../components/primary_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeControllers themeControllers = Get.put(ThemeControllers());
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            const ThemeChangeBtn(),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                      color:
                          Theme.of(context).colorScheme.onSecondaryContainer),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'BMI Calculator',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      // ignore: deprecated_member_use
                      color: Theme.of(context).colorScheme.onBackground),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                PrimaryButton(
                  icon: Icons.male,
                  btnName: 'Male',
                ),
                SizedBox(width: 20),
                PrimaryButton(
                  icon: Icons.female,
                  btnName: 'Fe Male',
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const HeightSelector(),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                          ),
                          height: 200,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Weight',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Theme.of(context)
                                            .colorScheme
                                            // ignore: deprecated_member_use
                                            .onBackground),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
