import 'package:bmi_app/controllers/bmi_controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sec_btn.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = BmiController.instance;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      height: 240,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Age',
                style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context)
                        .colorScheme
                        // ignore: deprecated_member_use
                        .onSecondaryContainer),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  '${bmiController.age.value}',
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context)
                          .colorScheme
                          // ignore: deprecated_member_use
                          .onBackground),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecBtn(
                icon: Icons.add,
                onTap: () {
                  bmiController.age.value++;
                },
              ),
              SecBtn(
                icon: CupertinoIcons.minus,
                onTap: () {
                  if (bmiController.age.value != 0) {
                    bmiController.age.value--;
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
