import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../data/models/covid_model.dart';
import '../data/repository/api_repository.dart';

part 'covid_event.dart';
part 'covid_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final ApiRepository apiRepository;
  PostBloc({required this.apiRepository}) : super(PostInitial()) {
    on<PostEvent>((event, emit) async {
      if (event is LoadEvent || event is PullToRefreshEvent) {
        emit(LoadingState());
        try {
          final posts = await apiRepository.getPostsList();
          print(posts);
          emit(LoadedState(posts: posts));
        } catch (e) {
          emit(FailureLoadState(message: e.toString()));
        }
      } else {}
    });
  }
}
