/// 상영 기간 정보를 담는 DTO 클래스입니다.
class DatesDto {
  /// 집계 마지막 날짜입니다. (형식: YYYY-MM-DD)
  final String maximum;

  /// 집계 시작 날짜입니다. (형식: YYYY-MM-DD)
  final String minimum;

  /// [DatesDto] 생성자입니다.
  DatesDto({required this.maximum, required this.minimum});

  /// JSON 맵에서 [DatesDto] 객체를 생성합니다.
  factory DatesDto.fromJson(Map<String, dynamic> json) {
    return DatesDto(
      maximum: json['maximum'] as String,
      minimum: json['minimum'] as String,
    );
  }

  /// [DatesDto] 객체를 JSON 맵으로 변환합니다.
  Map<String, dynamic> toJson() {
    return {'maximum': maximum, 'minimum': minimum};
  }
}
