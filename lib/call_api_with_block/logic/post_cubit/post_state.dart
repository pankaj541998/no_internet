
import 'package:test_one/call_api_with_block/data/models/post_model.dart';

abstract class PostState{}

// class PostInitial extends PostState{}
class PostLoading extends PostState{}
class PostLoaded extends PostState{
  final List<PostModel> posts;
  PostLoaded({required this.posts});
}
class PostError extends PostState{
  final String message;
  PostError({required this.message});
}

class PostEmpty extends PostState{}

class PostLoadedWithId extends PostState{
  final List<PostModel> posts;
  PostLoadedWithId({required this.posts});
}