/// 개별 영화 정보를 담는 DTO 클래스입니다.
class MovieDto {
  /// 성인 영화 여부입니다.
  final bool adult;

  /// 배경 이미지 경로입니다.
  final String? backdropPath;

  /// 장르 ID 목록입니다.
  final List<int> genreIds;

  /// 영화 식별자(ID)입니다.
  final int id;

  /// 원본 언어 코드입니다. (예: "en", "ko")
  final String originalLanguage;

  /// 원본 제목입니다.
  final String originalTitle;

  /// 영화 줄거리(개요)입니다.
  final String overview;

  /// 인기도 점수입니다.
  final double popularity;

  /// 포스터 이미지 경로입니다.
  final String? posterPath;

  /// 개봉일입니다. (형식: YYYY-MM-DD)
  final String releaseDate;

  /// 영화 제목입니다.
  final String title;

  /// 비디오 보유 여부입니다.
  final bool video;

  /// 평점 평균입니다.
  final double voteAverage;

  /// 평점 투표 수입니다.
  final int voteCount;

  /// [MovieDto] 생성자입니다.
  MovieDto({
    required this.adult,
    this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  /// JSON 맵에서 [MovieDto] 객체를 생성합니다.
  factory MovieDto.fromJson(Map<String, dynamic> json) {
    return MovieDto(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String?,
      genreIds: List<int>.from(json['genre_ids'] as List),
      id: json['id'] as int,
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String,
      title: json['title'] as String,
      video: json['video'] as bool,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
    );
  }

  /// [MovieDto] 객체를 JSON 맵으로 변환합니다.
  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdrop_path': backdropPath,
      'genre_ids': genreIds,
      'id': id,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }
}
