import 'package:bmi_app/controllers/bmi_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    BmiController bmiController = Get.put(BmiController());

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Obx(() => Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: bmiController.gender.value == btnName
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    // ignore: deprecated_member_use
                    color: bmiController.gender.value == btnName
                        ? Theme.of(context).colorScheme.primaryContainer
                        : Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    btnName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      // ignore: deprecated_member_use
                      color: bmiController.gender.value == btnName
                          ? Theme.of(context).colorScheme.primaryContainer
                          : Theme.of(context).colorScheme.primary,
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
