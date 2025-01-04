import 'package:flutter_bloc/flutter_bloc.dart';
import 'employee_list_page_state.dart';

class EmployeeListCubit extends Cubit<EmployeeListPageState> {
  EmployeeListCubit() : super(EmployeeListPageInitState());

  void getListEmployee() {
    emit(EmployeeListPageInitState());
  }
}
