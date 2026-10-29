import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_styles.dart';
import '../../common/widgets/custom_text_formField.dart';
import '../../common/widgets/multi_text_button.dart';
import '../../common/widgets/primary_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
          Image.asset('assets/images/cadastroLogin.png'),
          Form(
              child: Column(
                  children: [
                    CustomTextFormField(
                      labelText: "E-mail",
                      hintText: "Digite o seu e-mail.",
                    )])),
          Padding(
            //Através do only é que eu dei o espaçamento.
            padding: const EdgeInsets.only(
              left: 32,
              right: 32,
              top: 16,
              bottom: 4,
            ),
            child: PrimaryButton(
              text: 'Cadastre-se!',
              onPressed: () => developer.log('Cliquei em cadastrar!'),
            ),
          ),
          MultiTextButton(
            onPressed: () => developer.log('Cliquei ir para tela de login!'),
            children: [
              Text(
                'Já tem um conta? ',
                style: AppTextStyles.smallText.copyWith(
                  color: AppColors.darkGrey,
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
        ],
      ),
    );
  }
}
