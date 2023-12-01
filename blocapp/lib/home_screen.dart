import 'package:blocapp/app_blocs.dart';
import 'package:blocapp/app_events.dart';
import 'package:blocapp/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("hey");
    return Scaffold(body: Center(
      child: BlocBuilder<AppBlocs, AppState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                // state.counterValue.toString(),
                '${BlocProvider.of<AppBlocs>(context).state.counterValue}',
                style: const TextStyle(fontSize: 25),
              ),
              const Text(
                '',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                      child: const Text("Increment"),
                      onPressed: () =>
                          BlocProvider.of<AppBlocs>(context).add(Increment())),
                  MaterialButton(
                      child: const Text("Decrement"),
                      onPressed: () =>
                          BlocProvider.of<AppBlocs>(context).add(Decrement())),
                ],
              )
            ],
          );
        },
      ),
    ));
  }
}
