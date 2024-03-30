

import 'package:my_news_app/models/categories_news_model.dart';
import 'package:my_news_app/models/news_channel_headlines_model.dart';
import 'package:my_news_app/repository/news_repo/NewsRepository.dart';

class NewsViewModel {
  final _repo_api = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi(String channelName) async{
    final response = _repo_api.fetchNewsChannelHeadlinesApi(channelName);
    return response;
  }

  Future<CategoryNewsModel> fetchCategoryNewsApi(String category) async{
    final response = _repo_api.fetchCategoryNewsApi(category);
    return response;
  }
}