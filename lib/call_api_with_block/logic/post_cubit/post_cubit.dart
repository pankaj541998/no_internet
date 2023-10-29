
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_one/call_api_with_block/data/repository/api/api.dart';

import '../../data/models/post_model.dart';
import 'post_state.dart';

class PostCubit extends Cubit<PostState>{
  PostCubit() : super(PostLoading()); 
  BaseAPI baseAPI = BaseAPI();

  void getPosts() async{
    try{
      



      // List<PostModel> posts = await baseAPI.BaseAPI();
      // emit(PostLoading());
      // // final posts = await baseAPI.getPosts();
      // emit(PostLoaded(posts: posts));
    }catch(e){
      emit(PostError(message: e.toString()));
    }
  }

}