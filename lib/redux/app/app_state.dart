import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/redux/home/home_state.dart';
import 'package:loginapp/redux/login/login_state.dart';


@immutable
class AppState extends Equatable {
  AppState({
    @required this.signUpState,
    @required this.homeState,
  });

  final PostsStateLogin signUpState;
  final PostsStateHome homeState;

  static AppState rehydrationJSON(dynamic json) {
    return json != null
        ? AppState(
            signUpState: PostsStateLogin(),
            homeState: PostsStateHome(),
          )
        : AppState.initial();
  }

  Map<String, dynamic> toJson() => {
        //       'auth': authState.toJson(),
        //     'checkout': checkoutState.toJson(),
      };

  factory AppState.initial() {
    return AppState(
      signUpState: PostsStateLogin(),
      homeState: PostsStateHome(),
    );
  }

  AppState copyWith({
    PostsStateLogin signUpState,
    PostsStateHome homeState,
  }) =>
      AppState(
        signUpState: signUpState ?? this.signUpState,
        homeState: homeState ?? this.homeState,
      );

  @override
  List<Object> get props =>
      [
        signUpState,
        homeState,
      ];
}
