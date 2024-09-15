import 'package:flutter/material.dart';
import 'package:shop_flow/core/theming/colors_manager.dart';
import 'package:shop_flow/core/theming/styles.dart';
import 'package:shop_flow/core/utils/extensions.dart';

void setupErrorState(BuildContext context, String error) {
  context.pop();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        error,
        textAlign: TextAlign.center,
        style: Styles.font13GreyBold.copyWith(
          color: ColorsManager.primaryColor,
          fontSize: 15,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: Styles.font13GreyBold.copyWith(
              color: ColorsManager.primaryColor,
              fontSize: 15,
            ),
          ),
        ),
      ],
    ),
  );
}
