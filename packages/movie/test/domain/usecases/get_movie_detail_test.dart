import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movie/domain/usecases/get_movie_detail.dart';

import '../../dummy_data/dummy_objects.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetMovieDetail usecase;
  late MockMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = GetMovieDetail(mockMovieRepository);
  });

  test('should get movie detail from repository', () async {
    // arrange
    when(mockMovieRepository.getMovieDetail(1))
        .thenAnswer((_) async => const Right(testMovieDetail));
    // act
    final result = await usecase.execute(1);
    // assert
    expect(result, const Right(testMovieDetail));
  });
}
