import 'package:loginapp/redux/common_actions.dart';
import 'package:loginapp/redux/login/login_state.dart';
import 'package:flutter/material.dart';


class LoginAction extends ErrorAction {
  LoginAction(BuildContext context, this.email, this.password) : super(context);
  final String email;
  final String password;
}



@immutable
class SetPostsStateActionLogin {
  final PostsStateLogin postsState;

  SetPostsStateActionLogin(this.postsState);
}
