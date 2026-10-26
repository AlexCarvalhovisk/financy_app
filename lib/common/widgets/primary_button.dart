import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  // Usando o VoidCallback, siguinifica que é uma funcção sem retorno com se fosse final void Function...
  final VoidCallback? onPressed;
  final String text;

  PrimaryButton({this.onPressed, required this.text, super.key});

  //Aqui criei esse OBJETO e deixei essa variável definida como padrão da classe, pois refatorei o código para evitar reescrita.
  final BorderRadius _borderRadius = const BorderRadius.all(
    Radius.circular(24),
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        height: 58,
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: onPressed != null
                ? AppColors.greenGradient
                : AppColors.greyGradient,
          ),
        ),
        child: InkWell(
          borderRadius: _borderRadius,
          //Aqui é onde eu segui lá de cima o padrão do Flutter, chamando essa propriedade.
          onTap: onPressed,
          child: Align(
            child: Text(
              text,
              style: AppTextStyles.mediumText.copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
