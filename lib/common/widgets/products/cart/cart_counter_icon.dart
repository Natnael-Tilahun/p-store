import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:p_store/utils/constants/colors.dart';
import 'package:p_store/utils/helpers/helper_functions.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({super.key, this.iconColor, required this.onPressed});

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.shopping_bag),
          color: iconColor ?? (isDark ? TColors.white : TColors.dark),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '0',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: TColors.white,
                  fontSizeFactor: 0.8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
