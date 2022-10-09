import 'package:counting_cubit/cubit/math_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageCounting extends StatefulWidget {
  const PageCounting({super.key});

  @override
  State<PageCounting> createState() => _PageCountingState();
}

class _PageCountingState extends State<PageCounting> {
  @override
  Widget build(BuildContext context) {
    MathCubit cubit = context.read<MathCubit>();
    return BlocConsumer<MathCubit, MathState>(
      listener: (context, state) {
        switch (state.runtimeType) {
          case MathLoading:
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Cargando")));
            break;
          default:
        }
      },
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('Counting'),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () => cubit.increment(),
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
                onPressed: () => cubit.dencrement(),
                child: const Icon(Icons.remove)),
            FloatingActionButton(
                onPressed: () => cubit.reset(),
                child: const Icon(Icons.exposure_zero))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              state.props[0].toString(),
              style: const TextStyle(fontSize: 30),
            ))
          ],
        ),
      ),
    );
  }
}
