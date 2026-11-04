import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {

  const CustomCircularProgressIndicator({
    Key? key,
}): super (key: key);

  @override
  Widget build(BuildContext context){
    return Center(
      child: const CircularProgressIndicator(
        color: AppColors.iceWhite,
      ),
    );
  }
}