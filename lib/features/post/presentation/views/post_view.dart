import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/core/constants/assets_manager.dart';
import 'package:social_app/core/constants/values_manager.dart';
import 'package:social_app/core/routers/routes_manager.dart';
import 'package:social_app/core/themes/color_manager.dart';
import 'package:social_app/features/post/domain/models/post_model/post_model.dart';
import 'package:social_app/features/post/domain/models/story_model/story_model.dart';
import 'package:social_app/features/post/presentation/blocs/post_bloc/post_bloc.dart';
import 'package:social_app/features/post/presentation/blocs/story_bloc/story_bloc.dart';

import '../../../../core/app/depndency_injection.dart';
import '../widgets/image_post_widget.dart';
import '../widgets/post_item_widget.dart';
import '../widgets/story_item_widget.dart';

class PostView extends StatefulWidget {
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  late StoryBloc storyBloc;
  late PostBloc postBloc;
  @override
  void initState() {
    storyBloc = instance<StoryBloc>();
    postBloc = instance<PostBloc>();
    super.initState();
  }

  @override
  void dispose() {
    storyBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder(
            bloc: storyBloc,
            builder: (context, state) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizeW.s26),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: AppSizeH.s10),
                  height: AppSizeH.s75,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          ColorManager.storyBackGround1,
                          ColorManager.storyBackGround2,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(AppSizeR.s48)),
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(AppSizeR.s48),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: storyBloc.stories.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                      horizontal: AppSizeW.s7_5)
                                  .copyWith(
                                      start: index == 0
                                          ? AppSizeW.s10
                                          : AppSizeW.s7_5),
                              child: InkWell(
                                onTap: () {
                                  context.goNamed(RoutesNames.storyRoute);
                                },
                                child: StoryItemWidget(
                                    story: storyBloc.stories[index]),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(height: AppSizeH.s12),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizeW.s13),
            child: BlocBuilder(
              bloc: postBloc,
              builder: (context, state) => ListView.separated(
                separatorBuilder: (context, index) =>
                    SizedBox(height: AppSizeH.s12),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: postBloc.posts.length,
                itemBuilder: (context, index) {
                  return PostItemWidget(post: postBloc.posts[index]);
                },
              ),
            ),
          ),
          SizedBox(height: AppSizeH.s12),
        ],
      ),
    );
  }
}
