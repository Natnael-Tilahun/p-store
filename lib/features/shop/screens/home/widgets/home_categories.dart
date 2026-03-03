import 'package:flutter/material.dart';
import 'package:p_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:p_store/utils/constants/colors.dart';
import 'package:p_store/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.sportIcon,
            text: "Sport Category",
            onTap: () {},
            textColor: TColors.white,
          );
        },
      ),
    );
  }
}
