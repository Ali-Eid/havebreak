import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/core/constants/assets_manager.dart';
import 'package:social_app/features/post/domain/models/story_model/story_model.dart';

part 'story_event.dart';
part 'story_state.dart';
part 'story_bloc.freezed.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  List<StoryModel> stories = [
    StoryModel(userImage: ImageAssets.person1),
    StoryModel(userImage: ImageAssets.person2),
    StoryModel(userImage: ImageAssets.person3),
    StoryModel(userImage: ImageAssets.person4),
    StoryModel(userImage: ImageAssets.person5),
    StoryModel(userImage: ImageAssets.person6),
    StoryModel(userImage: ImageAssets.person7),
  ];
  StoryBloc() : super(const _Initial()) {
    on<StoryEvent>((event, emit) {});
  }
}
