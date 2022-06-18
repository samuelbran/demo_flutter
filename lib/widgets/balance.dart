import 'package:demo_flutter/constants.dart';
import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: defaultPadding / 2,
        top: defaultPadding,
        right: defaultPadding / 2,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(defaultPadding * 2),
          topRight: Radius.circular(defaultPadding * 2),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: defaultPadding + 15,
          horizontal: defaultPadding + 10,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFdef6d3),
          borderRadius: BorderRadius.all(Radius.circular(defaultPadding + 10)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Balance',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '\$8,897.00',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 32.0, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Cash In'),
            ),
          ],
        ),
      ),
    );
  }
}
