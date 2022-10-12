import 'package:flutter/material.dart';
import 'package:lesson_flutter_provider/controllers/home_controller.dart';
import 'package:lesson_flutter_provider/pages/home_page.dart';
import 'package:lesson_flutter_provider/services/log_service.dart';
import 'package:lesson_flutter_provider/services/user_service.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MultiProvider(
          providers: [
            Provider<LogService>(
              create: (_) => InternalLogService(),
              lazy: true,
            ),
            ProxyProvider<LogService, UserService>(
              update: (_, logService, __) => UserServiceImpl(
                logService: logService,
              ),
              dispose: (_, userService) => userService.dispose(),
            ),
            ChangeNotifierProvider<HomeController>(
              create: (_) => HomeController(),
            ),
          ],
          child: const HomePage(),
        ),
      ),
    );
  }
}
