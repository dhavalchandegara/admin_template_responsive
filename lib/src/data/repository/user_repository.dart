import 'package:admin_template_responsive/src/data/data_source/user_data_source.dart';
import 'package:admin_template_responsive/src/domain/repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserDataSource _userDataSource;

  UserRepositoryImpl(this._userDataSource);

  @override
  void signIn() {
    _userDataSource.signIn();
  }

  @override
  void signUp() {
    _userDataSource.signUp();
  }
}
