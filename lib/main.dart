import 'package:bloc_cart/features/home/bloc/home_bloc.dart';
import 'package:bloc_cart/features/home/bloc/home_state.dart';
import 'package:bloc_cart/features/home/ui/HomePage.dart';
import 'package:bloc_cart/service/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(ApiService()),
      child: HomeScreen(),
    );
  }
}
