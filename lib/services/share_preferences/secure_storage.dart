import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  // Create storage
  final storage = new FlutterSecureStorage();

  Future<bool> write({String key, String value}) async {
    try {
      // Write value

      if(value == null){
        return false;
      }
      await storage.write(key: key, value: value);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<String> read({String key}) async {
    try {
      // Write value
      return await storage.read(key: key);
    } catch (e) {
      return null;
    }
  }

  Future<bool> delete({String key}) async {
    try {
      // Delete value
      await storage.delete(key: key);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteAll() async {
    try {
      // Delete all
      await storage.deleteAll();
      return true;
    } catch (e) {
      return false;
    }
  }

   Future<Map<String, String>> readAll() async {
    try {
      // Write value
      return await storage.readAll();
    } catch (e) {
      return null;
    }
  }
}
