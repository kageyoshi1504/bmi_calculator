import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sec_btn.dart';

class WeightSelector extends StatelessWidget {
  const WeightSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
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
                    fontSize: 15,
                    color: Theme.of(context)
                        .colorScheme
                        // ignore: deprecated_member_use
                        .onSecondaryContainer),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '45',
                style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context)
                        .colorScheme
                        // ignore: deprecated_member_use
                        .onBackground),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecBtn(
                icon: Icons.add,
                onTap: () {},
              ),
              SecBtn(
                icon: CupertinoIcons.minus,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
