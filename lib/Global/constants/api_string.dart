class APIString {
  APIString._(); // Private constructor to prevent instantiation

  static const String apiKey = 'd85b9d51d2494af7919df56113d152a6';

  static const String topHeadlines =
      'https://newsapi.org/v2/top-headlines?country=in&apiKey=$apiKey';

  static const String bbcNews =
      'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=$apiKey';

  static const String categoryNews =
      'https://newsapi.org/v2/everything?q=Apple&from=2024-03-30&sortBy=popularity&apiKey=$apiKey';
}
