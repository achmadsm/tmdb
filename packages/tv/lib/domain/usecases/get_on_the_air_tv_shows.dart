import 'package:core/utils/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tv/domain/entities/tv.dart';
import 'package:tv/domain/repositories/tv_repository.dart';

class GetOnTheAirTvShows {
  final TvRepository repository;

  GetOnTheAirTvShows(this.repository);

  Future<Either<Failure, List<Tv>>> execute() {
    return repository.getOnTheAirTvShows();
  }
}
