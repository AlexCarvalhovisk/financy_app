import 'dart:developer' as developer;

import 'package:financy_app/common/utils/uppercase_text_formatter.dart';
import 'package:financy_app/common/utils/validator.dart';
import 'package:financy_app/common/widgets/password_form_field.dart';
import 'package:flutter/material.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_styles.dart';
import '../../common/widgets/custom_text_form_field.dart';
import '../../common/widgets/multi_text_button.dart';
import '../../common/widgets/primary_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  //Instanciei esse objeto globalmente
  final _formKey = GlobalKey<FormState>();
  final _passawordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'Gaste com cautela',
            style: AppTextStyles.mediumText.copyWith(color: AppColors.greenTwo),
          ),
          Text(
            'Poupe com segurança.',
            style: AppTextStyles.mediumText.copyWith(color: AppColors.greenTwo),
          ),
          Image.asset('assets/images/cadastroLogin.png'),
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: "Nome",
                  hintText: "NARA FERNANDA",
                  inputFormatters: [UppercaseTextFormatter()],
                  validator: Validator.validateName,
                ),
                CustomTextFormField(
                  labelText: "E-mail",
                  hintText: "nara.fernanda@teste.com",
                  validator: Validator.validateEmail,
                ),
                PasswordFormField(
                  controller: _passawordController,
                  labelText: "Escolha a sua senha.",
                  hintText: "******",
                  validator: Validator.validatePassword,
                  helperText: "A senha dever ter uns paranaue para ser válida.",
                ),
                PasswordFormField(
                  labelText: "Confirme a sua senha.",
                  hintText: "******",
                  validator: (value) => Validator.validateConfirmPassword(value, _passawordController.text),
                ),
              ],
            ),
          ),
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
              onPressed: () {
                final valid =
                    _formKey.currentState != null &&
                    _formKey.currentState!.validate();
                if (valid) {
                  developer.log("Continuar lógica de login!");
                } else {
                  developer.log("Erro ao logar!");
                }
              },
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
                  color: AppColors.greenTwo,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}