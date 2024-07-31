import 'package:flutter/material.dart';

class SettingsHeader extends StatelessWidget {
  final String title;
  final Icon icon;

  const SettingsHeader({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Container(
          height: 30.0,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          alignment: Alignment.centerLeft,
          child: Row(
            children: <Widget>[
              icon,
              SizedBox(width: 10),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          )
        ),
      );
}
