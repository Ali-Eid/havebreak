import 'package:flutter/material.dart';

import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../domain/models/story_model/story_model.dart';

class StoryItemWidget extends StatelessWidget {
  final StoryModel story;
  const StoryItemWidget({
    super.key,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizeH.s58,
      width: AppSizeH.s58,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: AppSizeW.s1, color: ColorManager.white),
          image: DecorationImage(image: AssetImage(story.userImage))),
    );
  }
}
