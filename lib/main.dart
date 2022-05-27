import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med/Screens/Main/bloc/main_cubit.dart';
import 'package:med/routes/routes.dart';

void main() async {
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => HomeCubit())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor',
      theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      onGenerateRoute: MyRoutes.instants.onGeneretRoute,
    );
  }
}
