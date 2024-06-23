import "package:flutter/material.dart";
import "package:food_app/routes/app_router.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRoute = AppRouter();
    return MaterialApp.router(
      routerConfig: appRoute.config(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
