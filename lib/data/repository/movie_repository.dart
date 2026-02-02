import '../../domain/entity/movie_entity.dart';
import '../source/movie_data_source.dart';

class MovieRepository {
  final MovieDataSource _movieDataSource;

  MovieRepository({required MovieDataSource movieDataSource})
    : _movieDataSource = movieDataSource;

  Future<List<MovieEntity>> getNowPlaying() async {
    final response = await _movieDataSource.getNowPlaying();
    return response.results
        .map((e) => MovieEntity(id: e.id, posterPath: e.posterPath))
        .toList();
  }

  Future<List<MovieEntity>> getPopular() async {
    final response = await _movieDataSource.getPopular();
    return response.results
        .map((e) => MovieEntity(id: e.id, posterPath: e.posterPath))
        .toList();
  }

  Future<List<MovieEntity>> getTopRated() async {
    final response = await _movieDataSource.getTopRated();
    return response.results
        .map((e) => MovieEntity(id: e.id, posterPath: e.posterPath))
        .toList();
  }

  Future<List<MovieEntity>> getUpcoming() async {
    final response = await _movieDataSource.getUpcoming();
    return response.results
        .map((e) => MovieEntity(id: e.id, posterPath: e.posterPath))
        .toList();
  }

  Future<MovieEntity> getMovieDetails(int movieId) async {
    final response = await _movieDataSource.getMovieDetail(movieId);
    return MovieEntity(id: response.id, posterPath: response.posterPath);
  }
}
