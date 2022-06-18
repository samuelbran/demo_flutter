import 'package:demo_flutter/constants.dart';
import 'package:flutter/material.dart';

class IconTitle extends StatelessWidget {
  const IconTitle({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(defaultPadding),
      child: Ink(
        width: 100,
        color: color,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: defaultPadding,
              horizontal: defaultPadding / 2,
            ),
            child: Column(
              children: [
                Icon(icon),
                const SizedBox(
                  height: 5,
                ),
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
