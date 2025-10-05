// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
  totalItems: (json['total'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
  currentPage: (json['page'] as num).toInt(),
);

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'total': instance.totalItems,
      'total_pages': instance.totalPages,
      'page': instance.currentPage,
    };
