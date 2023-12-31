import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:watchlist/domain/usecases/get_watchlist_tv_shows.dart';

import '../../dummy_data/dummy_objects.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetWatchlistTvShows usecase;
  late MockWatchlistRepository mockWatchlistRepository;

  setUp(() {
    mockWatchlistRepository = MockWatchlistRepository();
    usecase = GetWatchlistTvShows(mockWatchlistRepository);
  });

  test('should get list of tv shows from repository', () async {
    // arrange
    when(mockWatchlistRepository.getWatchlistTvShows())
        .thenAnswer((_) async => const Right(testWatchlistTvList));
    // act
    final result = await usecase.execute();
    // assert
    expect(result, const Right(testWatchlistTvList));
  });
}
