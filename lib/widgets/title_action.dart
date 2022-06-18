import 'package:demo_flutter/constants.dart';
import 'package:flutter/material.dart';

class TitleAction extends StatelessWidget {
  const TitleAction({super.key, required this.title, this.action});

  final String title;
  final void Function()? action;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: action != null
          ? const EdgeInsets.symmetric(horizontal: defaultPadding)
          : const EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: onPrimaryColor,
                ),
          ),
          if (action != null)
            TextButton(
              onPressed: action,
              child: Text(
                'See all',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.grey,
                    ),
              ),
            ),
        ],
      ),
    );
  }
}
