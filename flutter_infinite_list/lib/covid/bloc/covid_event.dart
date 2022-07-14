part of 'covid_bloc.dart';

@immutable
abstract class PostEvent {}

class LoadEvent extends PostEvent {}

class PullToRefreshEvent extends PostEvent {}
