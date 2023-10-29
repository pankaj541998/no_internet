import 'package:dio/dio.dart';
import 'package:test_one/call_api_with_block/data/models/post_model.dart';
import 'package:test_one/call_api_with_block/data/repository/api/api.dart';

class PostRpo{
  BaseAPI api = BaseAPI();
  Future<List<PostModel>> fetchRepo() async{
    try {
     Response response =  await api.sendRequest.get('/posts');
     List<dynamic> data = response.data;
     return data.map((e) => PostModel.fromJson(e)).toList();
      
    } catch (e) {

      throw Exception(e);
      
    }
  }
}