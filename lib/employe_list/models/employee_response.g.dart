// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeResponse _$EmployeeResponseFromJson(Map<String, dynamic> json) =>
    EmployeeResponse(
      employeeName: json['name'] as String,
      employeeEmail: json['email'] as String,
    );

Map<String, dynamic> _$EmployeeResponseToJson(EmployeeResponse instance) =>
    <String, dynamic>{
      'name': instance.employeeName,
      'email': instance.employeeEmail,
    };
