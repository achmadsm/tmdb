// Mocks generated by Mockito 5.4.2 from annotations
// in tmdb/test/presentation/provider/watchlist_notifier_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:dartz/dartz.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:tmdb/common/failure.dart' as _i7;
import 'package:tmdb/domain/entities/movie_detail.dart' as _i12;
import 'package:tmdb/domain/entities/tv_detail.dart' as _i13;
import 'package:tmdb/domain/entities/watchlist.dart' as _i8;
import 'package:tmdb/domain/repositories/movie_repository.dart' as _i2;
import 'package:tmdb/domain/repositories/tv_repository.dart' as _i4;
import 'package:tmdb/domain/usecases/get_watchlist_movies.dart' as _i5;
import 'package:tmdb/domain/usecases/get_watchlist_status.dart' as _i10;
import 'package:tmdb/domain/usecases/get_watchlist_tv_shows.dart' as _i9;
import 'package:tmdb/domain/usecases/remove_watchlist.dart' as _i14;
import 'package:tmdb/domain/usecases/save_watchlist.dart' as _i11;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeMovieRepository_0 extends _i1.SmartFake
    implements _i2.MovieRepository {
  _FakeMovieRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTvRepository_2 extends _i1.SmartFake implements _i4.TvRepository {
  _FakeTvRepository_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GetWatchlistMovies].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetWatchlistMovies extends _i1.Mock
    implements _i5.GetWatchlistMovies {
  MockGetWatchlistMovies() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.MovieRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeMovieRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.MovieRepository);

  @override
  _i6.Future<_i3.Either<_i7.Failure, List<_i8.Watchlist>>> execute() =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
        ),
        returnValue:
            _i6.Future<_i3.Either<_i7.Failure, List<_i8.Watchlist>>>.value(
                _FakeEither_1<_i7.Failure, List<_i8.Watchlist>>(
          this,
          Invocation.method(
            #execute,
            [],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, List<_i8.Watchlist>>>);
}

/// A class which mocks [GetWatchlistTvShows].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetWatchlistTvShows extends _i1.Mock
    implements _i9.GetWatchlistTvShows {
  MockGetWatchlistTvShows() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.TvRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeTvRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.TvRepository);

  @override
  _i6.Future<_i3.Either<_i7.Failure, List<_i8.Watchlist>>> execute() =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
        ),
        returnValue:
            _i6.Future<_i3.Either<_i7.Failure, List<_i8.Watchlist>>>.value(
                _FakeEither_1<_i7.Failure, List<_i8.Watchlist>>(
          this,
          Invocation.method(
            #execute,
            [],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, List<_i8.Watchlist>>>);
}

/// A class which mocks [GetWatchlistStatus].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetWatchlistStatus extends _i1.Mock
    implements _i10.GetWatchlistStatus {
  MockGetWatchlistStatus() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.MovieRepository get movieRepository => (super.noSuchMethod(
        Invocation.getter(#movieRepository),
        returnValue: _FakeMovieRepository_0(
          this,
          Invocation.getter(#movieRepository),
        ),
      ) as _i2.MovieRepository);

  @override
  _i4.TvRepository get tvRepository => (super.noSuchMethod(
        Invocation.getter(#tvRepository),
        returnValue: _FakeTvRepository_2(
          this,
          Invocation.getter(#tvRepository),
        ),
      ) as _i4.TvRepository);

  @override
  _i6.Future<bool> executeMovie(int? id) => (super.noSuchMethod(
        Invocation.method(
          #executeMovie,
          [id],
        ),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);

  @override
  _i6.Future<bool> executeTv(int? id) => (super.noSuchMethod(
        Invocation.method(
          #executeTv,
          [id],
        ),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
}

/// A class which mocks [SaveWatchList].
///
/// See the documentation for Mockito's code generation for more information.
class MockSaveWatchList extends _i1.Mock implements _i11.SaveWatchList {
  MockSaveWatchList() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.MovieRepository get movieRepository => (super.noSuchMethod(
        Invocation.getter(#movieRepository),
        returnValue: _FakeMovieRepository_0(
          this,
          Invocation.getter(#movieRepository),
        ),
      ) as _i2.MovieRepository);

  @override
  _i4.TvRepository get tvRepository => (super.noSuchMethod(
        Invocation.getter(#tvRepository),
        returnValue: _FakeTvRepository_2(
          this,
          Invocation.getter(#tvRepository),
        ),
      ) as _i4.TvRepository);

  @override
  _i6.Future<_i3.Either<_i7.Failure, String>> executeMovie(
          _i12.MovieDetail? movie) =>
      (super.noSuchMethod(
        Invocation.method(
          #executeMovie,
          [movie],
        ),
        returnValue: _i6.Future<_i3.Either<_i7.Failure, String>>.value(
            _FakeEither_1<_i7.Failure, String>(
          this,
          Invocation.method(
            #executeMovie,
            [movie],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, String>>);

  @override
  _i6.Future<_i3.Either<_i7.Failure, String>> executeTv(_i13.TvDetail? tv) =>
      (super.noSuchMethod(
        Invocation.method(
          #executeTv,
          [tv],
        ),
        returnValue: _i6.Future<_i3.Either<_i7.Failure, String>>.value(
            _FakeEither_1<_i7.Failure, String>(
          this,
          Invocation.method(
            #executeTv,
            [tv],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, String>>);
}

/// A class which mocks [RemoveWatchlist].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoveWatchlist extends _i1.Mock implements _i14.RemoveWatchlist {
  MockRemoveWatchlist() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.MovieRepository get movieRepository => (super.noSuchMethod(
        Invocation.getter(#movieRepository),
        returnValue: _FakeMovieRepository_0(
          this,
          Invocation.getter(#movieRepository),
        ),
      ) as _i2.MovieRepository);

  @override
  _i4.TvRepository get tvRepository => (super.noSuchMethod(
        Invocation.getter(#tvRepository),
        returnValue: _FakeTvRepository_2(
          this,
          Invocation.getter(#tvRepository),
        ),
      ) as _i4.TvRepository);

  @override
  _i6.Future<_i3.Either<_i7.Failure, String>> executeMovie(
          _i12.MovieDetail? movie) =>
      (super.noSuchMethod(
        Invocation.method(
          #executeMovie,
          [movie],
        ),
        returnValue: _i6.Future<_i3.Either<_i7.Failure, String>>.value(
            _FakeEither_1<_i7.Failure, String>(
          this,
          Invocation.method(
            #executeMovie,
            [movie],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, String>>);

  @override
  _i6.Future<_i3.Either<_i7.Failure, String>> executeTv(_i13.TvDetail? tv) =>
      (super.noSuchMethod(
        Invocation.method(
          #executeTv,
          [tv],
        ),
        returnValue: _i6.Future<_i3.Either<_i7.Failure, String>>.value(
            _FakeEither_1<_i7.Failure, String>(
          this,
          Invocation.method(
            #executeTv,
            [tv],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, String>>);
}
