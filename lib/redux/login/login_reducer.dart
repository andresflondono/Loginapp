import 'package:loginapp/redux/login/login_actions.dart';
import 'package:loginapp/redux/login/login_state.dart';


postsReducer(PostsStateLogin prevState, SetPostsStateActionLogin action) {
  final payload = action.postsState;
  return prevState.copyWith(
    isError: payload.isError,
    isLoading: payload.isLoading,

  );
}
