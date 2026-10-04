part of 'home_bloc.dart';

enum HomeStatus { initial, success, failure }

final class HomeState {
  const HomeState({this.status = HomeStatus.initial});

  final HomeStatus status;
}
