import 'package:hive/hive.dart';
part 'loginInfo.g.dart';

@HiveType(typeId: 2)
class LoginInfo extends HiveObject {
  @HiveField(0)
  bool isLoggedIn;
  @HiveField(1)
  String email;
  LoginInfo({required this.isLoggedIn, required this.email});
}
