import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/core/constants/assets_manager.dart';
import 'package:social_app/core/constants/values_manager.dart';
import 'package:social_app/core/routers/routes_manager.dart';
import 'package:social_app/core/themes/color_manager.dart';

import '../widgets/tag_widget.dart';

class StoryView extends StatefulWidget {
  const StoryView({super.key});

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Image(
                            width: double.infinity,
                            image: AssetImage(
                              ImageAssets.postImg1,
                            ),
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppSizeW.s15,
                                vertical: AppSizeH.s40),
                            child: SvgPicture.asset(IconAssets.loveSelected),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: AppSizeH.s160,
                  right: AppSizeW.s50,
                  child: TagWidget(
                    iconSrc: IconAssets.tag,
                    text: "Meditation",
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizeW.s19, vertical: AppSizeH.s15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            context.pop();
                          },
                          child: SvgPicture.asset(IconAssets.back)),
                      SizedBox(width: AppSizeW.s10),
                      Text(
                        "Mariano Di Vaio",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(width: AppSizeW.s10),
                      Text(
                        "17 m",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),
                  SvgPicture.asset(IconAssets.download)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
