import 'package:financy_app/common/constants/app_colors.dart';
import 'package:financy_app/common/widgets/primary_button.dart';
import 'package:flutter/material.dart';

import '../constants/app_text_styles.dart';

Future<void> customModalBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(38),
            topRight: Radius.circular(38),
          ),
        ),
        height: 300,
        child: SizedBox.expand(
          child: Center(
            child: Column(
              mainAxisAlignment: .center,
              mainAxisSize: .min,
              children: <Widget>[
                Text('Ops! Algo deu errado!', style: AppTextStyles.mediumText20.copyWith(color: AppColors.greenOne)),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 32,
                  ),
                  child: PrimaryButton(
                    text: 'Tentar novamente!',
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}