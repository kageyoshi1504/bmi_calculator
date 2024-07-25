import 'package:bmi_app/controllers/bmi_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = BmiController.instance;
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primaryContainer),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height (CM)',
                  style: TextStyle(
                      fontSize: 15,
                      color:
                          Theme.of(context).colorScheme.onSecondaryContainer),
                ),
              ],
            ),
            Expanded(
              child: Obx(
                () => SfSlider.vertical(
                  value: bmiController.height.value,
                  onChanged: (dynamic value) {
                    bmiController.height.value = value;
                  },
                  max: 250.0,
                  min: 50.0,
                  interval: 25,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 1,
                  activeColor: Theme.of(context).colorScheme.primary,
                  inactiveColor:
                      Theme.of(context).colorScheme.primary.withOpacity(.2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
