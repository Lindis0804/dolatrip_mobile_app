abstract class LocalDataSource {
  Future<void> saveToken(String token);
  Future<String> getToken();
}
