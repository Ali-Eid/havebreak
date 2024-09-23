import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/core/themes/color_manager.dart';
import 'package:social_app/core/utils/extensions.dart';
import 'package:social_app/core/widgets/shimmer_widget.dart';
import 'package:social_app/features/post/domain/models/comment_model/comment_model.dart';
import 'package:social_app/features/post/domain/models/post_model/post_model.dart';
import 'package:social_app/features/post/presentation/blocs/comment_bloc/comment_bloc.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/values_manager.dart';

class CommentView extends StatefulWidget {
  final PostModel post;
  const CommentView({super.key, required this.post});

  @override
  State<CommentView> createState() => _CommentViewState();
}

class _CommentViewState extends State<CommentView> {
  late CommentBloc commentBloc;
  @override
  void initState() {
    commentBloc = instance<CommentBloc>()
      ..add(CommentEvent.getComments(postId: widget.post.id));
    super.initState();
  }

  @override
  void dispose() {
    commentBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: ColorManager.red,
                  ),
                  SizedBox(width: AppSizeW.s3),
                  Text(
                    widget.post.likesCount.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: AppSizeW.s7),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: AppSizeSp.s14,
                  )
                ],
              ),
              SvgPicture.asset(IconAssets.loveUnselected),
            ],
          ),
          SizedBox(height: AppSizeH.s10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Most relevant",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_drop_down_rounded,
                size: AppSizeSp.s22,
              )
            ],
          ),
          SizedBox(height: AppSizeH.s10),
          BlocBuilder(
            bloc: commentBloc,
            builder: (context, CommentState state) {
              return state.map(
                loading: (value) {
                  return Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          SizedBox(height: AppSizeH.s12),
                      padding: EdgeInsets.only(bottom: AppSizeH.s12),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const CommentItemShimmerWidget();
                      },
                    ),
                  );
                },
                loaded: (value) {
                  return Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          SizedBox(height: AppSizeH.s12),
                      padding: EdgeInsets.only(bottom: AppSizeH.s12),
                      itemCount: value.comments.length,
                      itemBuilder: (context, index) {
                        return CommentItemWidget(model: value.comments[index]);
                      },
                    ),
                  );
                },
                error: (value) {
                  return Text(value.message);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class CommentItemWidget extends StatefulWidget {
  final CommentModel model;
  const CommentItemWidget({super.key, required this.model});

  @override
  State<CommentItemWidget> createState() => _CommentItemWidgetState();
}

class _CommentItemWidgetState extends State<CommentItemWidget> {
  List<String> images = [
    ImageAssets.person1,
    ImageAssets.person2,
    ImageAssets.person3,
    ImageAssets.person4,
    ImageAssets.person5,
    ImageAssets.person6,
    ImageAssets.person7
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: AppSizeW.s35,
          height: AppSizeH.s35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                images[Random().nextInt(images.length - 1)],
              ),
            ),
          ),
        ),
        SizedBox(width: AppSizeW.s4),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.all(AppSizeW.s16).copyWith(top: AppSizeH.s6),
                decoration: BoxDecoration(
                  color: ColorManager.grey5,
                  borderRadius: BorderRadius.circular(AppSizeR.s20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.model.email.nameBeforeAt,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.model.body,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppSizeH.s4),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                    child: Text(
                      "7 h",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                    child: Text(
                      "Like",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                    child: Text(
                      "Replay",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class CommentItemShimmerWidget extends StatelessWidget {
  const CommentItemShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerWidget(
          child: Container(
            width: AppSizeW.s35,
            height: AppSizeH.s35,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: ColorManager.white),
          ),
        ),
        SizedBox(width: AppSizeW.s4),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.all(AppSizeW.s16).copyWith(top: AppSizeH.s6),
                decoration: BoxDecoration(
                  color: ColorManager.grey5,
                  borderRadius: BorderRadius.circular(AppSizeR.s20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShimmerWidget(
                        child: Container(
                      height: AppSizeH.s16,
                      width: AppSizeW.s40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(AppSizeR.s20)),
                    )),
                    SizedBox(height: AppSizeH.s8),
                    ShimmerWidget(
                        child: Container(
                      height: AppSizeH.s16,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(AppSizeR.s20)),
                    )),
                    SizedBox(height: AppSizeH.s8),
                    ShimmerWidget(
                        child: Container(
                      height: AppSizeH.s16,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(AppSizeR.s20)),
                    )),
                  ],
                ),
              ),
              SizedBox(height: AppSizeH.s4),
            ],
          ),
        )
      ],
    );
  }
}
