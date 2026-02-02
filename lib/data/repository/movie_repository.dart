import '../../domain/entity/movie_entity.dart';
import '../source/tmdb_data_source.dart';

class MovieRepository {
  final TmdbDataSource _dataSource = TmdbDataSource();

  Future<List<MovieEntity>> getNowPlaying() async {
    final response = await _dataSource.getNowPlaying();
    return response.results
        .map((e) => MovieEntity(id: e.id, posterPath: e.posterPath))
        .toList();
  }

  Future<List<MovieEntity>> getPopular() async {
    final response = await _dataSource.getPopular();
    return response.results
        .map((e) => MovieEntity(id: e.id, posterPath: e.posterPath))
        .toList();
  }

  Future<List<MovieEntity>> getTopRated() async {
    final response = await _dataSource.getTopRated();
    return response.results
        .map((e) => MovieEntity(id: e.id, posterPath: e.posterPath))
        .toList();
  }

  Future<List<MovieEntity>> getUpcoming() async {
    final response = await _dataSource.getUpcoming();
    return response.results
        .map((e) => MovieEntity(id: e.id, posterPath: e.posterPath))
        .toList();
  }

  Future<MovieEntity> getMovieDetails(int movieId) async {
    final response = await _dataSource.getMovieDetails(movieId);
    return MovieEntity(
      id: response['id'] as int,
      posterPath: response['poster_path'] as String?,
    );
  }
}
