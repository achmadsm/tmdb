import 'package:core/data/models/genre_model.dart';
import 'package:equatable/equatable.dart';
import 'package:tv/domain/entities/tv_detail.dart';

class TvDetailResponse extends Equatable {
  final List<int> episodeRunTime;
  final List<GenreModel> genres;
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final double voteAverage;

  const TvDetailResponse({
    required this.episodeRunTime,
    required this.genres,
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.voteAverage,
  });

  factory TvDetailResponse.fromJson(Map<String, dynamic> json) =>
      TvDetailResponse(
        episodeRunTime: List<int>.from(json["episode_run_time"].map((x) => x)),
        genres: List<GenreModel>.from(
            json["genres"].map((x) => GenreModel.fromJson(x))),
        id: json["id"],
        title: json["name"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        voteAverage: json["vote_average"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "episode_run_time": List<dynamic>.from(episodeRunTime.map((x) => x)),
        "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
        "id": id,
        "name": title,
        "overview": overview,
        "poster_path": posterPath,
        "vote_average": voteAverage,
      };

  TvDetail toEntity() {
    return TvDetail(
      episodeRunTime: episodeRunTime,
      genres: genres.map((genre) => genre.toEntity()).toList(),
      id: id,
      title: title,
      overview: overview,
      posterPath: posterPath,
      voteAverage: voteAverage,
    );
  }

  @override
  List<Object?> get props => [
        episodeRunTime,
        genres,
        id,
        title,
        overview,
        posterPath,
        voteAverage,
      ];
}
