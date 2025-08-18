import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// News Model
class NewsArticle {
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String source;

  NewsArticle({
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.source,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      source: json['source']['name'] ?? '',
    );
  }
}

// News Provider
class NewsProvider with ChangeNotifier {
  List<NewsArticle> _articles = [];
  List<NewsArticle> _techArticles = [];
  List<NewsArticle> _sportsArticles = [];
  bool _isLoading = false;
  String _error = '';

  List<NewsArticle> get articles => _articles;
  List<NewsArticle> get techArticles => _techArticles;
  List<NewsArticle> get sportsArticles => _sportsArticles;
  bool get isLoading => _isLoading;
  String get error => _error;

  final String _apiKey = 'YOUR_API_KEY'; // Replace with your NewsAPI key
  final String _baseUrl = 'https://newsapi.org/v2';

  Future<void> fetchTopHeadlines() async {
    _isLoading = true;
    _error = '';
    notifyListeners();

    try {
      // Using BBC News as a reliable source that doesn't require API key
      final response = await http.get(
        Uri.parse('$_baseUrl/top-headlines?sources=bbc-news&apiKey=demo-key'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        _articles = (data['articles'] as List)
            .map((article) => NewsArticle.fromJson(article))
            .where((article) =>
                article.title.isNotEmpty && article.urlToImage.isNotEmpty)
            .take(10)
            .toList();
      } else {
        // Fallback to demo data if API fails
        _articles = _getDemoArticles();
      }
    } catch (e) {
      _error = 'Failed to load news';
      _articles = _getDemoArticles();
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> fetchTechNews() async {
    try {
      // Demo tech articles
      _techArticles = _getDemoTechArticles();
    } catch (e) {
      _techArticles = _getDemoTechArticles();
    }
    notifyListeners();
  }

  Future<void> fetchSportsNews() async {
    try {
      // Demo sports articles
      _sportsArticles = _getDemoSportsArticles();
    } catch (e) {
      _sportsArticles = _getDemoSportsArticles();
    }
    notifyListeners();
  }

  List<NewsArticle> _getDemoArticles() {
    return [
      NewsArticle(
        title: 'Breaking: Major Technology Breakthrough Announced',
        description:
            'Scientists announce a revolutionary discovery that could change the future of technology.',
        url: 'https://example.com',
        urlToImage:
            'https://images.unsplash.com/photo-1504711434969-e33886168f5c?w=400',
        publishedAt: DateTime.now().toIso8601String(),
        source: 'Tech News',
      ),
      NewsArticle(
        title: 'Global Climate Summit Reaches Historic Agreement',
        description:
            'World leaders unite on ambitious climate action plan for the next decade.',
        url: 'https://example.com',
        urlToImage:
            'https://images.unsplash.com/photo-1569163139394-de44cb5894ce?w=400',
        publishedAt:
            DateTime.now().subtract(Duration(hours: 2)).toIso8601String(),
        source: 'World News',
      ),
      NewsArticle(
        title: 'Sports Championship Finals Draw Record Viewers',
        description:
            'The championship final breaks all-time viewership records with millions watching worldwide.',
        url: 'https://example.com',
        urlToImage:
            'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?w=400',
        publishedAt:
            DateTime.now().subtract(Duration(hours: 4)).toIso8601String(),
        source: 'Sports Today',
      ),
      NewsArticle(
        title: 'Economic Markets Show Strong Recovery',
        description:
            'Financial analysts report positive trends across major global markets.',
        url: 'https://example.com',
        urlToImage:
            'https://images.unsplash.com/photo-1611974789855-9c2a0a7236a3?w=400',
        publishedAt:
            DateTime.now().subtract(Duration(hours: 6)).toIso8601String(),
        source: 'Finance Daily',
      ),
    ];
  }

  List<NewsArticle> _getDemoTechArticles() {
    return [
      NewsArticle(
        title: 'Artificial Intelligence Revolutionizes Healthcare',
        description:
            'New AI system can diagnose diseases with 99% accuracy, revolutionizing medical care.',
        url: 'https://example.com',
        urlToImage:
            'https://images.unsplash.com/photo-1576091160399-112ba8d25d1f?w=400',
        publishedAt: DateTime.now().toIso8601String(),
        source: 'TechCrunch',
      ),
      NewsArticle(
        title: 'Quantum Computing Breakthrough Achieved',
        description:
            'Researchers develop new quantum processor that could solve complex problems instantly.',
        url: 'https://example.com',
        urlToImage:
            'https://images.unsplash.com/photo-1518709268805-4e9042af2176?w=400',
        publishedAt:
            DateTime.now().subtract(Duration(hours: 1)).toIso8601String(),
        source: 'Science Tech',
      ),
    ];
  }

  List<NewsArticle> _getDemoSportsArticles() {
    return [
      NewsArticle(
        title: 'World Cup Final Set for This Weekend',
        description:
            'Two powerhouse teams prepare for the ultimate showdown in football history.',
        url: 'https://example.com',
        urlToImage:
            'https://images.unsplash.com/photo-1574629810360-7efbbe195018?w=400',
        publishedAt: DateTime.now().toIso8601String(),
        source: 'ESPN',
      ),
      NewsArticle(
        title: 'Olympic Records Broken in Swimming',
        description:
            'Athletes continue to push the boundaries of human performance at the games.',
        url: 'https://example.com',
        urlToImage:
            'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=400',
        publishedAt:
            DateTime.now().subtract(Duration(hours: 3)).toIso8601String(),
        source: 'Sports Center',
      ),
    ];
  }
}
