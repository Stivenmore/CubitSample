import 'package:counting_cubit/cubit/math_cubit.dart';
import 'package:counting_cubit/pagecounting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MathCubit(),
      child: const MaterialApp(
        home: PageCounting(),
      ),
    );
  }
}
