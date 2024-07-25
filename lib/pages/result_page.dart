import 'dart:io';

import 'package:bmi_app/components/ract_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                        Platform.isIOS
                            ? Icons.arrow_back_ios
                            : Icons.arrow_back,
                        size: 20),
                  ),
                  const SizedBox(width: 10),
                  const Text('Back'),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Your BMI is',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CircularPercentIndicator(
                radius: 100,
                lineWidth: 20.0,
                animation: true,
                circularStrokeCap: CircularStrokeCap.round,
                percent: 0.2,
                footer: Text(
                  'UnderWeight',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                center: Text(
                  '100%',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                progressColor: Theme.of(context).colorScheme.primary,
                backgroundColor:
                    Theme.of(context).colorScheme.primary.withOpacity(.2),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).colorScheme.primaryContainer),
                child: const Text(
                    'Hello Every body .................................................'),
              ),
              const SizedBox(height: 20),
              RactButton(
                  icon: Icons.arrow_back_ios_outlined,
                  btnName: 'Find Out More',
                  onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
