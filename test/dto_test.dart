import 'dart:convert';
import 'dart:io';

import 'package:flutter_movie/data/dto/movie_response_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('MovieResponseDto parsing test', () {
    final file = File('test/now_playing_semple.json');
    final jsonString = file.readAsStringSync();
    final jsonMap = jsonDecode(jsonString);

    final dto = MovieResponseDto.fromJson(jsonMap);

    expect(dto.page, 1);
    expect(dto.results.isNotEmpty, true);
    expect(dto.dates, isNotNull);
    expect(dto.dates!.maximum, '2026-02-04');
    expect(dto.results[0].title, '포풍추영');

    print('Parsing success: ${dto.results.length} movies found.');
  });

  test('Popular MovieResponseDto parsing test (no dates)', () {
    final file = File('test/popular_sample.json');
    final jsonString = file.readAsStringSync();
    final jsonMap = jsonDecode(jsonString);

    final dto = MovieResponseDto.fromJson(jsonMap);

    expect(dto.page, 1);
    expect(dto.results.isNotEmpty, true);
    expect(dto.dates, isNull); // Popular usually doesn't have dates
    expect(dto.results[0].title, '주토피아 2');

    print('Parsing success: ${dto.results.length} movies found.');
  });
}
