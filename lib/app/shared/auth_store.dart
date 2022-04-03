import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  @action
  Future<bool> isLogged() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var isLogged = sharedPreferences.getString('token') != null;
    return isLogged;
  }
}
