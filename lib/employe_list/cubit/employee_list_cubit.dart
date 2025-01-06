import 'package:flutter_bloc/flutter_bloc.dart';
import '../repository/employee_list_repository.dart';
import 'employee_list_page_state.dart';

class EmployeeListCubit extends Cubit<EmployeeListPageState> {
  final EmployeeListRepository employeeListRepository;

   EmployeeListCubit({required this.employeeListRepository}) : super(EmployeeListPageInitState());

  void getListEmployee() async{
    await employeeListRepository.getEmployeeList("path");
    emit(EmployeeListPageInitState());
  }
}
