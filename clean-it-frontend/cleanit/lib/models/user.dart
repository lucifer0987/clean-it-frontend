import 'package:hive/hive.dart';
part 'user.g.dart';

@HiveType(typeId: 1)
class User extends HiveObject {
  @HiveField(0)
  String email;
  @HiveField(1)
  String phone;
  @HiveField(2)
  String name;
  @HiveField(3)
  bool isAdmin;

  User({
    required this.email,
    required this.phone,
    this.isAdmin = false,
    this.name = '',
  });
}
