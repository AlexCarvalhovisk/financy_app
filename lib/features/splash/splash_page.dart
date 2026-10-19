import 'package:financy_app/common/constants/app_colors.dart';
import 'package:financy_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            //Aqui chamei a lista de cores.
            colors: AppColors.greenGradient,
          ),
        ),
        child: Text(
          'Financy',
          //Essa cor e fonte, agora está vindo das classes de cores e de fontes.
          //Ou seja, chamei a bigText e apliquei uma cor no texto dele.
          style: AppTextStyles.bigText.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
