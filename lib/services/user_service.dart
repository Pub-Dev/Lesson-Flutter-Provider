import 'package:lesson_flutter_provider/services/log_service.dart';

abstract class UserService {
  void loggedIn();
  void dispose();
}

class UserServiceImpl implements UserService {
  UserServiceImpl({
    required this.logService,
  });

  final LogService logService;

  @override
  void loggedIn() {
    //faz alguma coisa
    //e depois
    logService.log();
  }

  @override
  void dispose() {
    //faz o dispose
  }
}
