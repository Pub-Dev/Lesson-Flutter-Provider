import 'dart:developer' as devlog;

abstract class LogService {
  void log();
}

class InternalLogService implements LogService {
  @override
  void log() {
    devlog.log('Olha o log aqui!!');
  }
}
