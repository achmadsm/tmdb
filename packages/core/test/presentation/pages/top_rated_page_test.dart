import 'package:core/presentation/pages/top_rated_page.dart';
import 'package:core/utils/state_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movie/presentation/provider/movie_list_notifier.dart';
import 'package:provider/provider.dart';
import 'package:tv/presentation/provider/tv_list_notifier.dart';

import '../../../../movie/test/dummy_data/dummy_objects.dart';
import '../../../../tv/test/dummy_data/dummy_objects.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockMovieListNotifier mockMovieListNotifier;
  late MockTvListNotifier mockTvListNotifier;

  setUp(() {
    mockMovieListNotifier = MockMovieListNotifier();
    mockTvListNotifier = MockTvListNotifier();
  });

  Widget makeTestableWidgetMovie(Widget body) {
    return ChangeNotifierProvider<MovieListNotifier>.value(
      value: mockMovieListNotifier,
      child: MaterialApp(
        home: body,
      ),
    );
  }

  Widget makeTestableWidgetTvShow(Widget body) {
    return ChangeNotifierProvider<TvListNotifier>.value(
      value: mockTvListNotifier,
      child: MaterialApp(
        home: body,
      ),
    );
  }

  group('Top Rated Movies Page', () {
    testWidgets('Page should display center progress bar when loading',
        (WidgetTester tester) async {
      when(mockMovieListNotifier.topRatedMoviesState)
          .thenReturn(RequestState.loading);

      final progressBarFinder = find.byType(CircularProgressIndicator);
      final centerFinder = find.byType(Center);

      await tester.pumpWidget(
          makeTestableWidgetMovie(const TopRatedPage(isMovie: true)));

      expect(centerFinder, findsOneWidget);
      expect(progressBarFinder, findsOneWidget);
    });

    testWidgets('Page should display ListView when data is loaded',
        (WidgetTester tester) async {
      when(mockMovieListNotifier.topRatedMoviesState)
          .thenReturn(RequestState.loaded);
      when(mockMovieListNotifier.topRatedMovies).thenReturn(testMovieList);

      final listViewFinder = find.byType(ListView);

      await tester.pumpWidget(
          makeTestableWidgetMovie(const TopRatedPage(isMovie: true)));
      await tester.drag(listViewFinder, const Offset(0, -300));

      expect(listViewFinder, findsOneWidget);
    });

    testWidgets('Page should display text with message when Error',
        (WidgetTester tester) async {
      when(mockMovieListNotifier.topRatedMoviesState)
          .thenReturn(RequestState.error);
      when(mockMovieListNotifier.message).thenReturn('Error message');

      final textFinder = find.byKey(const Key('error_message'));

      await tester.pumpWidget(
          makeTestableWidgetMovie(const TopRatedPage(isMovie: true)));

      expect(textFinder, findsOneWidget);
    });
  });

  group('Top Rated Tv Shows Page', () {
    testWidgets('Page should display center progress bar when loading',
        (WidgetTester tester) async {
      when(mockTvListNotifier.topRatedTvShowsState)
          .thenReturn(RequestState.loading);

      final progressBarFinder = find.byType(CircularProgressIndicator);
      final centerFinder = find.byType(Center);

      await tester.pumpWidget(
          makeTestableWidgetTvShow(const TopRatedPage(isMovie: false)));

      expect(centerFinder, findsOneWidget);
      expect(progressBarFinder, findsOneWidget);
    });

    testWidgets('Page should display ListView when data is loaded',
        (WidgetTester tester) async {
      when(mockTvListNotifier.topRatedTvShowsState)
          .thenReturn(RequestState.loaded);
      when(mockTvListNotifier.topRatedTvShows).thenReturn(testTvList);

      final listViewFinder = find.byType(ListView);

      await tester.pumpWidget(
          makeTestableWidgetTvShow(const TopRatedPage(isMovie: false)));
      await tester.drag(listViewFinder, const Offset(0, -300));

      expect(listViewFinder, findsOneWidget);
    });

    testWidgets('Page should display text with message when Error',
        (WidgetTester tester) async {
      when(mockTvListNotifier.topRatedTvShowsState)
          .thenReturn(RequestState.error);
      when(mockTvListNotifier.message).thenReturn('Error message');

      final textFinder = find.byKey(const Key('error_message'));

      await tester.pumpWidget(
          makeTestableWidgetTvShow(const TopRatedPage(isMovie: false)));

      expect(textFinder, findsOneWidget);
    });
  });
}
