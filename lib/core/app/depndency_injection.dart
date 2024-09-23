import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_app/features/post/data/datasource/post_api.dart';
import 'package:social_app/features/post/data/repository/post_repository_impl.dart';
import 'package:social_app/features/post/domain/repository/post_repository.dart';
import 'package:social_app/features/post/domain/usecase/post_usecase.dart';
import 'package:social_app/features/post/presentation/blocs/post_bloc/post_bloc.dart';
import 'package:social_app/features/post/presentation/blocs/story_bloc/story_bloc.dart';
import '../../features/home/presentation/blocs/bottom_bar_cubit/bottom_bar_cubit.dart';
import '../../features/post/presentation/blocs/comment_bloc/comment_bloc.dart';
import '../cache/app_preferences.dart';
import '../network/dio_factory.dart';
import '../network/general_dio_interceptor.dart';
import '../network/network_info.dart';
// import 'package:path/path.dart' as p;

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  instance.registerFactory<SharedPreferences>(() => sharedPreferences);
  instance.registerFactory<AppPreferences>(() => AppPreferences(instance()));
  instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));
  instance.registerFactory<GeneralInterceptor>(() => GeneralInterceptor(
        instance(),
      ));
  final dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<Dio>(() => dio);

  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplementer(Connectivity()));

  //Bloc

  if (!GetIt.I.isRegistered<BottomBarCubit>()) {
    instance.registerFactory(
      () => BottomBarCubit(1),
    );
  }
}

Future<void> initHome() async {
  //Service
  instance.registerLazySingleton<PostServiceClient>(
      () => PostServiceClient(instance<Dio>()));
  //Repository
  if (!GetIt.I.isRegistered<PostRepository>()) {
    instance.registerLazySingleton<PostRepository>(() => PostRepositoryImpl(
        postServiceClient: instance<PostServiceClient>(),
        networkInfo: instance<NetworkInfo>()));
  }
  //Usecases
  if (!GetIt.I.isRegistered<GetCommentPostUsecase>()) {
    instance.registerLazySingleton<GetCommentPostUsecase>(
        () => GetCommentPostUsecase(repository: instance<PostRepository>()));
  }
  //Bloc
  if (!GetIt.I.isRegistered<StoryBloc>()) {
    instance.registerFactory<StoryBloc>(
      () => StoryBloc(),
    );
  }
  if (!GetIt.I.isRegistered<PostBloc>()) {
    instance.registerFactory<PostBloc>(
      () => PostBloc(),
    );
  }
  if (!GetIt.I.isRegistered<CommentBloc>()) {
    instance.registerFactory<CommentBloc>(
      () =>
          CommentBloc(getCommentPostUsecase: instance<GetCommentPostUsecase>()),
    );
  }
}
