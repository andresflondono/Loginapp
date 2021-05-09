import 'package:loginapp/redux/home/home_actions.dart';
import 'package:loginapp/redux/home/home_state.dart';

postsReducer(PostsStateHome prevState, SetPostsStateActionHome action) {
  final payload = action.postsState;
  return prevState.copyWith(
    isError: payload.isError,
    isLoading: payload.isLoading,
data : payload.data,
    // posts: payload.posts,
  );
}
