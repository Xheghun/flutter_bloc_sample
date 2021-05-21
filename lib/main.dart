import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_bloc/cubit/weather_cubit.dart';
import 'package:flutter_cubit_bloc/data/weather_repository.dart';
import 'package:flutter_cubit_bloc/pages/weather_search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        create: (_) => WeatherCubit(FakeWeatherRepository()),
        child:  WeatherSearchPage(),
      ),
    );
  }
}
