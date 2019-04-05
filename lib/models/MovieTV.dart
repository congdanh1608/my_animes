class MovieTV {
  String overview;
  String originalLanguage;
  String originalTitle;
  bool video;
  String title;
  List<int> genreIds;
  String posterPath;
  String backdropPath;
  String releaseDate;
  double voteAverage;
  double popularity;
  int id;
  bool adult;
  int voteCount;

  MovieTV(
      {this.overview,
      this.originalLanguage,
      this.originalTitle,
      this.video,
      this.title,
      this.genreIds,
      this.posterPath,
      this.backdropPath,
      this.releaseDate,
      this.voteAverage,
      this.popularity,
      this.id,
      this.adult,
      this.voteCount});

  MovieTV.fromJson(Map<String, dynamic> json) {
    overview = json['overview'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    video = json['video'];
    title = json['title'];
    genreIds = json['genre_ids'].cast<int>();
    posterPath = json['poster_path'];
    backdropPath = json['backdrop_path'];
    releaseDate = json['release_date'];
    voteAverage = json['vote_average'].toDouble();
    popularity = json['popularity'];
    id = json['id'];
    adult = json['adult'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['overview'] = this.overview;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['video'] = this.video;
    data['title'] = this.title;
    data['genre_ids'] = this.genreIds;
    data['poster_path'] = this.posterPath;
    data['backdrop_path'] = this.backdropPath;
    data['release_date'] = this.releaseDate;
    data['vote_average'] = this.voteAverage;
    data['popularity'] = this.popularity;
    data['id'] = this.id;
    data['adult'] = this.adult;
    data['vote_count'] = this.voteCount;
    return data;
  }
}
