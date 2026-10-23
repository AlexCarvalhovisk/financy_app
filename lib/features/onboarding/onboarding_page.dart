import 'dart:developer' as developer;

import 'package:financy_app/common/constants/app_colors.dart';
import 'package:financy_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../common/widgets/multi_text_button.dart';
import '../../common/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Align(
        child: Column(
          children: [
            const SizedBox(height: 48.0),
            Expanded(flex: 2, child: Image.asset('assets/images/banco.png')),
            Text(
              'Gaste com cautela',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.greenLightTwo,
              ),
            ),
            Text(
              'Poupe com segurança.',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.greenLightTwo,
              ),
            ),
            Padding(
              //Através do only é que eu dei o espaçamento.
              padding: const EdgeInsets.only(
                  left: 32,
                  right: 32,
                  top: 16,
                  bottom: 4),
              child: PrimaryButton(
                  text: 'Botão!',
                  onPressed: () {}
              ),
            ),
            MultiTextButton(
              onPressed: () => developer.log('Cliquei para criar conta!'),
              children: [
                Text(
                  'Não tem um conta? ',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.grey,
                  ),
                ),
                Text(
                  'Clique aqui!',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.greenLightTwo,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
