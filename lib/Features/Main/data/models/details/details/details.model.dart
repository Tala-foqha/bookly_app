// Features/Main/data/models/details/details/details.model.dart
import 'package:bookly_app/Features/Main/domain/entites/book_entity.dart';

import 'access_info.model.dart';
import 'sale_info.model.dart';
import 'volume_info.model.dart';

class Details extends BookEntity{
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;

  Details({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
  }) : super(image: volumeInfo?.imageLinks?.thumbnail??"",
  Bookid: id??"",
  title: volumeInfo?.title??'',
  subTitle: volumeInfo?.publisher??"",
  link: selfLink,
  author: volumeInfo?.authors??[],


  );

  factory Details.fromJson(Map<String, dynamic> json) => Details(
    kind: json['kind'] as String?,
    id: json['id'] as String?,
    etag: json['etag'] as String?,
    selfLink: json['selfLink'] as String?,
    volumeInfo: json['volumeInfo'] == null
        ? null
        : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
    saleInfo: json['saleInfo'] == null
        ? null
        : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
    accessInfo: json['accessInfo'] == null
        ? null
        : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'kind': kind,
    'id': id,
    'etag': etag,
    'selfLink': selfLink,
    'volumeInfo': volumeInfo?.toJson(),
    'saleInfo': saleInfo?.toJson(),
    'accessInfo': accessInfo?.toJson(),
  };
}
