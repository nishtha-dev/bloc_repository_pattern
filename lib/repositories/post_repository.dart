import 'dart:developer';

import 'package:bloc_repository_project/data/postmodal.dart';
import 'package:bloc_repository_project/repositories/api/api.dart';
import 'package:dio/dio.dart';

class PostRepository{
  API api = API();
  Future<List<PostModal>> fetchpost() async {
     try{
      Response response = await api.sendRequest.get("/posts");
      List<dynamic> postMaps = response.data;
      return  postMaps.map((postMap) => PostModal.fromJson(postMap)).toList();

     }
     catch(ex) {
      throw ex; 
     }
  } 
}