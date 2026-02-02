import 'dart:convert';
import 'package:http/http.dart' as http;
import '../dto/movie_response_dto.dart';

class TmdbDataSource {
  final String _baseUrl = 'https://api.themoviedb.org/3';
  // CURL.md에 있는 토큰
  final String _accessToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYmNiNzJjNzQ4N2U1N2QxNDdiNDk3Mjg3MTlmZDE5ZiIsIm5iZiI6MTczMzM5MTMxNy45NzUwMDAxLCJzdWIiOiI2NzUxNzNkNThhZjZkM2ZlYjNhZmU0NDUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.xwBAH8_W-yBA3RoH9JscnBQe_1McKgodxi1JO-kcJn8';

  Future<Map<String, String>> get _headers async => {
    'Authorization': 'Bearer $_accessToken',
    'accept': 'application/json',
  };

  Future<MovieResponseDto> getNowPlaying() async {
    final response = await http.get(
      Uri.parse('$_baseUrl/movie/now_playing?language=ko-KR&page=1'),
      headers: await _headers,
    );

    if (response.statusCode == 200) {
      return MovieResponseDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(
        'Failed to load now playing movies: ${response.statusCode}',
      );
    }
  }

  Future<MovieResponseDto> getPopular() async {
    final response = await http.get(
      Uri.parse('$_baseUrl/movie/popular?language=ko-KR&page=1'),
      headers: await _headers,
    );

    if (response.statusCode == 200) {
      return MovieResponseDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load popular movies: ${response.statusCode}');
    }
  }

  Future<MovieResponseDto> getTopRated() async {
    final response = await http.get(
      Uri.parse('$_baseUrl/movie/top_rated?language=ko-KR&page=1'),
      headers: await _headers,
    );

    if (response.statusCode == 200) {
      return MovieResponseDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(
        'Failed to load top rated movies: ${response.statusCode}',
      );
    }
  }

  Future<MovieResponseDto> getUpcoming() async {
    final response = await http.get(
      Uri.parse('$_baseUrl/movie/upcoming?language=ko-KR&page=1'),
      headers: await _headers,
    );

    if (response.statusCode == 200) {
      return MovieResponseDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load upcoming movies: ${response.statusCode}');
    }
  }

  Future<Map<String, dynamic>> getMovieDetails(int movieId) async {
    final response = await http.get(
      Uri.parse('$_baseUrl/movie/$movieId?language=ko-KR'),
      headers: await _headers,
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load movie details: ${response.statusCode}');
    }
  }
}
