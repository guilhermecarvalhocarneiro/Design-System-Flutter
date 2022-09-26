// ignore_for_file: public_member_api_docs, sort_constructors_first
/// Classe para centralizar as mensagens de logg do desenvolvimento
/// Utilizo o pacote logger na versão logger: ^1.1.0 para controlar o
/// visual dos logs
/// Url Pacote: https://pub.dev/packages/logger/example
/// [Exemplo de uso]
///    NuvolsLogger().info("Apenas uma informação teste");
///    NuvolsLogger().erro("Erro", "", StackTrace.current);
///    NuvolsLogger.debug("Debug", "", StackTrace.current);
///    NuvolsLogger.warning("Warning", "", StackTrace.current);
///    NuvolsLogger.crash("Crash", "", StackTrace.current);
///    NuvolsLogger().verbose({"chave": "valor"});
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// Classe com métodos abstratos para gerar logs costomizados
///
/// [Exemplo de uso]
/// ```
/// NuvolsLogger().info("Apenas uma informação teste");
/// ```
/// ```
/// NuvolsLogger().erro("Erro", "", StackTrace);
/// ```
/// ```
/// NuvolsLogger.debug("Debug", "", StackTrace.current);
/// ```
/// ```
/// NuvolsLogger.warning("Warning", "", StackTrace.current);
/// ```
/// ```
/// NuvolsLogger.crash("Crash", "", StackTrace);
/// ```
/// ```
/// NuvolsLogger().verbose({"chave": "valor"});
/// ```
class NuvolsLogger {
  final Logger _logger = Logger();

  void erro(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    if (kDebugMode) _logger.e(message, error, stackTrace);
  }

  void info(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    if (kDebugMode) _logger.i(message, error, stackTrace);
  }

  void debug(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    if (kDebugMode) _logger.d(message, error, stackTrace);
  }

  void warning(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    if (kDebugMode) _logger.w(message, error, stackTrace);
  }

  void crash(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    if (kDebugMode) _logger.wtf(message, error, stackTrace);
  }

  void verbose(dynamic message) {
    if (kDebugMode) _logger.v(message);
  }
}
