// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookEntityAdapter extends TypeAdapter<BookEntity> {
  @override
  final int typeId = 0;

  @override
  BookEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookEntity(
      category: (fields[9] as List?)?.cast<String>(),
      subTitle: fields[7] as String?,
      link: fields[8] as String?,
      description: fields[6] as String?,
      Bookid: fields[5] as String,
      image: fields[0] as String?,
      title: fields[1] as String,
      author: (fields[2] as List?)?.cast<String>(),
      rating: fields[3] as num?,
      price: fields[4] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, BookEntity obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.image)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.author)
      ..writeByte(3)
      ..write(obj.rating)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.Bookid)
      ..writeByte(6)
      ..write(obj.description)
      ..writeByte(7)
      ..write(obj.subTitle)
      ..writeByte(8)
      ..write(obj.link)
      ..writeByte(9)
      ..write(obj.category);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
