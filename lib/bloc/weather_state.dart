part of 'weather_bloc.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherSuccess extends WeatherState {}

final class WeatherFailure extends WeatherState {}

final class WeatherLoading extends WeatherState {}
