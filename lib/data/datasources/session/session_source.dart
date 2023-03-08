import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SessionSource {
  final storage = const FlutterSecureStorage();

  SessionSource(this.key);

  final String key;

  Future<String?> get token async {
    return await storage.read(key: key);
  }

  Future<void> setToken(String token) async {
    await storage.write(key: key, value: token);
  }

  Future<void> deleteToken() async {
    await storage.delete(key: key);
  }

  Future<bool> get hasSession async => await storage.containsKey(key: key);
}

final sessionSourceProvider =
    Provider.family<SessionSource, String>((ref, key) => SessionSource(key));
