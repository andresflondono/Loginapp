import 'package:loginapp/redux/common_actions.dart';
import 'package:loginapp/redux/home/home_state.dart';
import 'package:flutter/material.dart';
class HomeAction extends ErrorAction {
  HomeAction(BuildContext context) : super(context);

}
@immutable
class SetPostsStateActionHome {
  final PostsStateHome postsState;

  SetPostsStateActionHome(this.postsState);
}
