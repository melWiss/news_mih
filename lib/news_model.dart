class NewsModel {
  String? title;
  String? imageUrl;
  String? details;
  String? url;
  NewsModel({
    this.imageUrl =
        'https://a4.espncdn.com/combiner/i?img=%2Fphoto%2F2021%2F0707%2Fr877295_1296x729_16-9.jpg',
    this.details,
    this.title,
    this.url,
  });

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      title: map['title'] ?? 'Some Title',
      details: map['description'] ?? 'Some details',
      imageUrl: map['urlToImage'] ??
          'https://a4.espncdn.com/combiner/i?img=%2Fphoto%2F2021%2F0707%2Fr877295_1296x729_16-9.jpg',
      url: map['url'] ?? 'some link',
    );
  }

  toMap() {
    return {
      'title': this.title,
      'description': this.details,
      'urlToImage': this.imageUrl,
      'url': this.url,
    };
  }
}
