abstract class IslamPreferences {
  T getValue<T>({required String key, required T defaultValue});
  Future<void> setValue<T>({required String key, required T value});
  Future<void> saveMultiValue({required Map<String, dynamic> data});

  bool isKeyExist(String key);
  Future<bool> remove(String key);
  Future<bool> clear();
}
