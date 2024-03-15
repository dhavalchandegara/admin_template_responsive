import 'package:admin_template_responsive/src/domain/repository/user_repository.dart';

class UserUseCase {
  final UserRepository _userRepository;

  UserUseCase(this._userRepository);

  void signIn(Map<String, dynamic> data) {
    _userRepository.signIn();
  }

  void signUp(Map<String, dynamic> data) {
    _userRepository.signUp();
  }
}
