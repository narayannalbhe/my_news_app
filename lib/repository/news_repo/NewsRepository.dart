
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:my_news_app/Global/constants/api_string.dart';
import 'package:http/http.dart' as http;
import 'package:my_news_app/models/categories_news_model.dart';
import 'package:my_news_app/models/news_channel_headlines_model.dart';

class NewsRepository {
   // NewsChannelsHeadlinesModel
   Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi(String channelName) async{
     String url = APIString.topHeadlines ;
     final response = await http.get(Uri.parse(url));
     if (kDebugMode) {
       print(response.body);
     }
     if(response.statusCode == 200) {
       final body = jsonDecode(response.body);
       return NewsChannelsHeadlinesModel.fromJson(body);

     }throw Exception('Error');

   }

   //CategoryNewsModel
   Future<CategoryNewsModel> fetchCategoryNewsApi(String category) async{
     // String url = APIString.categoryNews ;
     String url = "https://newsapi.org/v2/everything?q=${category}&apiKey=d85b9d51d2494af7919df56113d152a6" ;

     final response = await http.get(Uri.parse(url));
     if (kDebugMode) {
       print(response.body);
     }
     if(response.statusCode == 200) {
       final body = jsonDecode(response.body);
       return CategoryNewsModel.fromJson(body);

     }throw Exception('Error');

   }

}