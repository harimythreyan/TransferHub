import 'package:flutter/material.dart';
import 'package:transfer_hub_app/gen/assets.gen.dart';
import 'package:transfer_hub_app/gen/strings.g.dart';

class TransferHubLogo extends StatelessWidget {
  final bool withText;

  const TransferHubLogo({required this.withText});

  @override
  Widget build(BuildContext context) {
    final logo = ColorFiltered(
      colorFilter: ColorFilter.mode(
        Theme.of(context).colorScheme.primary,
        BlendMode.srcATop,
      ),
      child: Assets.img.logo512.image(
        width: 200,
        height: 200,
      ),
    );

    if (withText) {
      return Column(
        children: [
          logo,
          Text(
            t.appName,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      );
    } else {
      return logo;
    }
  }
}
