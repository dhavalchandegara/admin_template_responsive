abstract class UserDataSource {
  void signIn();

  void signUp();
}

class UserDataSourceImpl extends UserDataSource {
  UserDataSourceImpl();

  @override
  void signIn() {}

  @override
  void signUp() {}
}
