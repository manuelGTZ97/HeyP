import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/core/failures.dart';
import '../../domain/entities/detail_news.dart';
import '../../domain/news/i_news_facade.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final INewsFacade _newsFacade;

  NewsBloc(this._newsFacade) : super(NewsState.initial());

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    yield state.copyWith(
      newsFailureOrSuccess: none(),
    );

    final failureOrSuccess = await _newsFacade.getNews();

    yield state.copyWith(
      newsFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}
