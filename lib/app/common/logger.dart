import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

var logger = Logger(
  filter: ProductionReleaseFilter(),
  printer: PrettyPrinter(),
  output: logConsoleOutPut,
);

var logConsoleOutPut = LogViewerConsoleOutput();

class ProductionReleaseFilter extends LogFilter {

  @override
  bool shouldLog(LogEvent event) {
    if (kReleaseMode) return false;

    var shouldLog = false;
    if (event.level.index >= Logger.level.index) {
      shouldLog = true;
    }

    return shouldLog;
  }
}

typedef LogOutputListener = void Function(OutputEvent event);

class LogViewerConsoleOutput extends LogOutput {
  List<LogOutputListener> logOutputListeners = [];

  addListener(LogOutputListener listener) {
    logOutputListeners.add(listener);
  }

  removeListener(LogOutputListener listener) {
    logOutputListeners.remove(listener);
  }

  clearAllListener() {
    logOutputListeners.clear();
  }

  @override
  void output(OutputEvent event) {
    event.lines.forEach(print);
    for (var listener in logOutputListeners) {
      listener(event);
    }
  }
}
