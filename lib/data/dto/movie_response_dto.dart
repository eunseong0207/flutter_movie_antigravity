import 'dates_dto.dart';
import 'movie_dto.dart';

/// 영화 목록 응답을 처리하는 DTO 클래스입니다.
///
/// '현재 상영작', '인기 영화', '평점 높은 영화', '개봉 예정작' 등
/// TMDB API의 다양한 영화 목록 응답을 공통으로 처리하기 위해 설계되었습니다.
class MovieResponseDto {
  /// 날짜 범위 정보입니다.
  ///
  /// '현재 상영작(now_playing)'과 '개봉 예정작(upcoming)' 응답에만 포함되며,
  /// 다른 응답에서는 null일 수 있습니다.
  final DatesDto? dates;

  /// 현재 페이지 번호입니다.
  final int page;

  /// 영화 목록 데이터입니다.
  final List<MovieDto> results;

  /// 전체 페이지 수입니다.
  final int totalPages;

  /// 전체 검색 결과 수입니다.
  final int totalResults;

  /// [MovieResponseDto] 생성자입니다.
  MovieResponseDto({
    this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  /// JSON 맵에서 [MovieResponseDto] 객체를 생성합니다.
  factory MovieResponseDto.fromJson(Map<String, dynamic> json) {
    return MovieResponseDto(
      dates: json['dates'] != null ? DatesDto.fromJson(json['dates']) : null,
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );
  }

  /// [MovieResponseDto] 객체를 JSON 맵으로 변환합니다.
  Map<String, dynamic> toJson() {
    return {
      if (dates != null) 'dates': dates!.toJson(),
      'page': page,
      'results': results.map((e) => e.toJson()).toList(),
      'total_pages': totalPages,
      'total_results': totalResults,
    };
  }
}
