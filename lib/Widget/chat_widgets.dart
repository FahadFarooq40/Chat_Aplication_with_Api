// ignore_for_file: camel_case_types

import 'package:chat_application/constants/constaints.dart';
import 'package:chat_application/services/assets_manager.dart';
import 'package:flutter/material.dart';

class chatWidgets extends StatelessWidget {
  const chatWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(AssetsManager.userPath, width: 30, height: 30)
              ],
            ),
          ),
        )
      ],
    );
  }
}
