import 'package:demo_flutter/constants.dart';
import 'package:demo_flutter/widgets/icon_title.dart';
import 'package:flutter/material.dart';

class DemoActions extends StatelessWidget {
  const DemoActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: defaultPadding,
      ),
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              width: defaultPadding / 2,
            ),
            IconTitle(
              title: 'Transaction',
              icon: Icons.compare_arrows_sharp,
              color: const Color(0xFFfcf6e3),
              onTap: () {},
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            IconTitle(
              title: 'Top-up',
              icon: Icons.download,
              color: const Color(0xFFfee6e0),
              onTap: () {},
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            IconTitle(
              title: 'More',
              icon: Icons.dashboard,
              color: const Color(0xFFfed5e5),
              onTap: () {},
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            IconTitle(
              title: 'Last Item',
              icon: Icons.qr_code,
              color: const Color(0xFFc6e1f1),
              onTap: () {},
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
          ],
        ),
      ),
    );
  }
}
