// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PickupListAdapter extends TypeAdapter<PickupList> {
  @override
  final int typeId = 5;

  @override
  PickupList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PickupList(
      pickups: (fields[0] as List).cast<PickUp>(),
    );
  }

  @override
  void write(BinaryWriter writer, PickupList obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.pickups);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PickupListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PickUpAdapter extends TypeAdapter<PickUp> {
  @override
  final int typeId = 3;

  @override
  PickUp read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PickUp(
      email: fields[0] as String,
      name: fields[1] as String,
      address1: fields[2] as String,
      city: fields[5] as String,
      phone: fields[11] as String,
      items: (fields[8] as List).cast<PickUpItems>(),
      pickupdate: fields[6] as String,
      pickuptime: fields[7] as String,
      pincode: fields[3] as String,
      price: fields[9] as String,
      state: fields[4] as String,
      status: (fields[10] as List).cast<Status>(),
    );
  }

  @override
  void write(BinaryWriter writer, PickUp obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.email)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.address1)
      ..writeByte(3)
      ..write(obj.pincode)
      ..writeByte(4)
      ..write(obj.state)
      ..writeByte(5)
      ..write(obj.city)
      ..writeByte(6)
      ..write(obj.pickupdate)
      ..writeByte(7)
      ..write(obj.pickuptime)
      ..writeByte(8)
      ..write(obj.items)
      ..writeByte(9)
      ..write(obj.price)
      ..writeByte(10)
      ..write(obj.status)
      ..writeByte(11)
      ..write(obj.phone);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PickUpAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PickUpItemsAdapter extends TypeAdapter<PickUpItems> {
  @override
  final int typeId = 4;

  @override
  PickUpItems read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PickUpItems(
      name: fields[0] as String,
      quantity: fields[1] as String,
      type: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PickUpItems obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.quantity)
      ..writeByte(2)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PickUpItemsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StatusAdapter extends TypeAdapter<Status> {
  @override
  final int typeId = 6;

  @override
  Status read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Status(
      date: fields[0] as String,
      time: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Status obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
