import '../models/employee_response.dart';
import 'employee_api.dart';

abstract class EmployeeListRepository {
  Future<List<EmployeeResponse>> getEmployeeList(String path);
}

class EmployeeListRepositoryImpl implements EmployeeListRepository {
  EmployeeApi employeeApi;

  EmployeeListRepositoryImpl(this.employeeApi);

  @override
  Future<List<EmployeeResponse>> getEmployeeList(String path) async {
    return await employeeApi.getEmployeeList();
  }
}
