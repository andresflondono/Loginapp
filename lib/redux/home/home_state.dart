import 'package:meta/meta.dart';
import 'package:loginapp/models/modelUser.dart';

@immutable
class PostsStateHome {
  final bool isError;
  final bool isLoading;

  final  List<modelUsers> data;


  PostsStateHome({
    this.isError,
    this.isLoading,
    this.data


    //this.posts,
  });

  factory PostsStateHome.initial() => PostsStateHome(
        isLoading: false,
        isError: false,
    data: const[],

      );

  PostsStateHome copyWith({
    @required bool isError,

    @required bool isLoading,

    @required List<modelUsers> data,


  }) {
    return PostsStateHome(
      isError: isError ?? this.isError,

      isLoading: isLoading ?? this.isLoading,
      data: data ?? this.data


    );
  }
}
