import 'package:json_annotation/json_annotation.dart';
part 'employee_response.g.dart';

@JsonSerializable()
class EmployeeResponse {
  @JsonKey(name: "name")
  late String employeeName;
  @JsonKey(name: "email")
  late String employeeEmail;

  EmployeeResponse({required this.employeeName, required this.employeeEmail});

  factory EmployeeResponse.fromJson(Map<String, dynamic> json) =>
      _$EmployeeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$EmployeeResponseToJson(this);
}
