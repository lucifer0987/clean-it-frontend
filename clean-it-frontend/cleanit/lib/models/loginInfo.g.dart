// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginInfo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginInfoAdapter extends TypeAdapter<LoginInfo> {
  @override
  final int typeId = 2;

  @override
  LoginInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginInfo(
      isLoggedIn: fields[0] as bool,
      email: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LoginInfo obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.isLoggedIn)
      ..writeByte(1)
      ..write(obj.email);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
