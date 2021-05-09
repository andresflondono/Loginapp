import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:loginapp/redux/home/home_actions.dart';
import 'package:loginapp/redux/home/home_reducer.dart';
import 'package:loginapp/redux/home/home_state.dart';

AppStateHome appReducerFavorite(AppStateHome state, dynamic action) {
  if (action is SetPostsStateActionHome) {
    final nextPostsState = postsReducer(state.postsState, action);

    return state.copyWith(postsState: nextPostsState);
  }

  return state;
}

@immutable
class AppStateHome {
  final PostsStateHome postsState;

  AppStateHome({
    @required this.postsState,
  });

  AppStateHome copyWith({
    PostsStateHome postsState,
  }) {
    return AppStateHome(
      postsState: postsState ?? this.postsState,
    );
  }
}

class ReduxHome {
  static Store<AppStateHome> _store;

  static Store<AppStateHome> get store {
    if (_store == null) {
      throw Exception("store is not initialized");
    } else {
      return _store;
    }
  }

  static Future<void> init() async {
    final postsStateInitial = PostsStateHome.initial();

    _store = Store<AppStateHome>(
      appReducerFavorite,
      middleware: [],
      initialState: AppStateHome(postsState: postsStateInitial),
    );
  }
}
