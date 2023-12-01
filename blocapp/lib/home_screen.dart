import 'package:blocapp/app_blocs.dart';
import 'package:blocapp/app_events.dart';
import 'package:blocapp/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Move _formKey inside the build method
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Center(
        child: BlocBuilder<AppBlocs, AppState>(
          builder: (context, state) {
            return Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' THis is counter value${BlocProvider.of<AppBlocs>(context).state.counterValue}',
                    style: const TextStyle(fontSize: 25),
                  ),
                  Text(
                    'THis is result${BlocProvider.of<AppBlocs>(context).state.result}',
                    style: const TextStyle(fontSize: 25),
                  ),
                  TextFormField(controller: controller1),
                  TextFormField(controller: controller2),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      MaterialButton(
                        child: const Text("Increment"),
                        onPressed: () =>
                            BlocProvider.of<AppBlocs>(context).add(Increment()),
                      ),
                      MaterialButton(
                        child: const Text("Decrement"),
                        onPressed: () =>
                            BlocProvider.of<AppBlocs>(context).add(Decrement()),
                      ),
                      MaterialButton(
                        child: const Text("find Sum"),
                        onPressed: () => BlocProvider.of<AppBlocs>(context).add(
                            FindSum(
                                one: int.parse(controller1.text),
                                two: int.parse(controller1.text))),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
