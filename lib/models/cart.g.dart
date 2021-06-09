// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cart _$CartFromJson(Map<String, dynamic> json) {
  return Cart(
    id: json['id'] as int?,
    title: json['title'] as String?,
    price: (json['price'] as num?)?.toDouble(),
    image: json['image'] as String?,
    quantity: json['quantity'] as int?,
  );
}

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'image': instance.image,
      'quantity': instance.quantity,
    };
