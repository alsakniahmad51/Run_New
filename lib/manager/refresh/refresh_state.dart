part of 'refresh_cubit.dart';

@immutable
sealed class RefreshState {}

final class RefreshInitial extends RefreshState {}

final class RefresRebuild extends RefreshState {}
