import 'package:flutter/material.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/ui/views/home/home_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: HomeView(),
    );
  }
}
