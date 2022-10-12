import 'package:flutter/material.dart';
import 'package:lesson_flutter_provider/controllers/home_controller.dart';
import 'package:lesson_flutter_provider/services/log_service.dart';
import 'package:lesson_flutter_provider/services/user_service.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final logService = Provider.of<LogService>(context);
    final userService = Provider.of<UserService>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: logService.log,
            child: const Text('Clique aqui 1'),
          ),
          TextButton(
            onPressed: userService.loggedIn,
            child: const Text('Clique aqui 2'),
          ),
          Consumer<HomeController>(
            builder: (context, controller, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: controller.tapped,
                    child: const Text('Add'),
                  ),
                  Text('Count: ${controller.counter}'),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
