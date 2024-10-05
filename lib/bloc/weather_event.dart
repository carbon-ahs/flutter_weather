part of 'weather_bloc.dart';

@immutable
sealed class WeatherEvent {}

// events should be in past tense
final class WeatherFetched extends WeatherEvent {}
