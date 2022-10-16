import 'package:flutter/material.dart';
import 'package:travel_app_with_block/utils/colors.utils.dart';

class ResponsiveButtonWidget extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  const ResponsiveButtonWidget(
      {Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("img/button-one.png"),
        ],
      ),
    );
  }
}
