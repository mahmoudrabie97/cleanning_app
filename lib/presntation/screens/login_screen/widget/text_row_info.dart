import 'package:cleanning_app/presntation/screens/login_screen/widget/custom_container_text.dart';
import 'package:flutter/material.dart';

class TextRowInfo extends StatelessWidget {
  const TextRowInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomContainerText(containerInfoText: 'Googled')),
        SizedBox(
          width: 5,
        ),
        Expanded(child: CustomContainerText(containerInfoText: 'Appled')),
      ],
    );
  }
}
