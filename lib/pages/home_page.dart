import 'package:bmi_app/components/age_selector.dart';
import 'package:bmi_app/components/height_selector.dart';
import 'package:bmi_app/components/theme_change_btn.dart';
import 'package:bmi_app/controllers/bmi_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/primary_button.dart';
import '../components/weight_selector.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
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
            Row(
              children: [
                PrimaryButton(
                  icon: Icons.male,
                  btnName: 'Male',
                  onTap: () {
                    bmiController.genderHandle('Male');
                    print('Male');
                  },
                ),
                const SizedBox(width: 20),
                PrimaryButton(
                  icon: Icons.female,
                  btnName: 'FeMale',
                  onTap: () {
                    bmiController.genderHandle('FeMale');
                    print('FeMale');
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeightSelector(),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WeightSelector(),
                        SizedBox(height: 30),
                        AgeSelector(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
                height: 50,
                child: PrimaryButton(
                  icon: Icons.done,
                  btnName: "Let's Go",
                  onTap: () {},
                )),
          ],
        ),
      )),
    );
  }
}
