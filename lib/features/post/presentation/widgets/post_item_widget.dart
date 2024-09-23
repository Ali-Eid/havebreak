import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/features/post/presentation/widgets/tag_widget.dart';

import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/themes/color_manager.dart';
import '../../domain/models/post_model/post_model.dart';
import '../views/comment_view.dart';
import 'image_post_widget.dart';

class PostItemWidget extends StatelessWidget {
  final PostModel post;
  const PostItemWidget({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizeW.s13),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeR.s20),
          boxShadow: [
            BoxShadow(
              offset: const Offset(2, 0),
              blurRadius: AppSizeR.s9,
              color: ColorManager.black.withOpacity(.25),
            )
          ],
          color: ColorManager.white),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: AppSizeW.s25,
                      height: AppSizeH.s25,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(post.imageUser))),
                    ),
                    SizedBox(width: AppSizeW.s8),
                    Text(
                      post.name,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(width: AppSizeW.s2),
                    Visibility(
                      visible: post.tagName != null,
                      child: Text(
                        ".With ${post.tagName}",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: AppSizeW.s10),
              Text(
                post.time,
                style: Theme.of(context).textTheme.displaySmall,
              )
            ],
          ),
          SizedBox(height: AppSizeH.s8),
          ImagePostWidget(
            images: post.images,
          ),
          SizedBox(height: AppSizeH.s8),
          Text(
            post.post,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          SizedBox(height: AppSizeH.s8),
          Visibility(
              visible: post.tags.isNotEmpty,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: post.tags.map(
                      (e) {
                        return Padding(
                          padding: EdgeInsetsDirectional.only(end: AppSizeW.s7),
                          child: TagWidget(iconSrc: IconAssets.tag, text: e),
                        );
                      },
                    ).toList(),
                  ),
                  Visibility(
                      visible: post.tags.length >= 3,
                      child: SvgPicture.asset(IconAssets.moreThree))
                ],
              )),
          SizedBox(height: AppSizeH.s8),
          Divider(color: ColorManager.gray, height: AppSizeH.s1),
          SizedBox(height: AppSizeH.s13),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizeW.s13),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(IconAssets.loveUnselected),
                          SizedBox(width: AppSizeW.s7),
                          Text(
                            post.likesCount.toString(),
                            style: Theme.of(context).textTheme.headlineSmall,
                          )
                        ],
                      ),
                      SizedBox(width: AppSizeW.s10),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            useRootNavigator: true,
                            isScrollControlled: true,
                            useSafeArea: true,
                            enableDrag: true,
                            showDragHandle: true,
                            builder: (context) {
                              return CommentView(
                                post: post,
                              );
                            },
                          );
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(IconAssets.comment),
                            SizedBox(width: AppSizeW.s7),
                            Text(
                              post.commentsCount.toString(),
                              style: Theme.of(context).textTheme.headlineSmall,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SvgPicture.asset(IconAssets.saved),
              ],
            ),
          )
        ],
      ),
    );
  }
}
