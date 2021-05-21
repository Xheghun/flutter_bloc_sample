part of 'weather_cubit.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final Weather weather;
  WeatherLoaded(this.weather);


  @override
  int get hashCode => weather.hashCode;

  @override
  bool operator ==(Object other) {
    if(identical(this, other)) return true;
    return other is WeatherLoaded && other.weather == weather;
  }
}

class WeatherError extends WeatherState {
  final String message;
  WeatherError(this.message);

  @override
  bool operator == (Object other) {
    if(identical(this, other)) return true;
    return other is WeatherError && other.message == message;
  }
  @override
  int get hashCode => message.hashCode;
}
