import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../models/employee_response.dart';
part 'employee_api.g.dart';

@RestApi()
abstract class EmployeeApi {
  factory EmployeeApi(Dio dio) = _EmployeeApi;

  @GET("https://jsonplaceholder.typicode.com/users")
  Future<List<EmployeeResponse>> getEmployeeList();

}
