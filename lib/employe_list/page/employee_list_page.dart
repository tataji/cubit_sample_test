import 'package:cubit_sample/employe_list/cubit/employee_list_cubit.dart';
import 'package:cubit_sample/employe_list/cubit/employee_list_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeListPage extends StatefulWidget {
  final EmployeeListCubit cubit;

  EmployeeListPage({super.key}) : cubit = EmployeeListCubit();

  @override
  State<StatefulWidget> createState() {
    return EmployeeListPageState();
  }
}

class EmployeeListPageState extends State<EmployeeListPage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
        child: BlocListener(
      bloc: widget.cubit,
      listenWhen: (previous, current) {
        return current is EmployeeListPageInitState;
      },
      listener: (BuildContext context, state) {
        if (state is EmployeeListPageInitState) {
          showSuccessPopUp();
        }
      },
      child: Scaffold(
              body: GestureDetector(
                  onTap: () {
                    widget.cubit.getListEmployee();
                  },
                  child: const Text("employee")))),
    );
  }

  void showSuccessPopUp() {
    showDialog(
      context: context,
      builder: (context) => const Scaffold(
        body: Text("success"),
      ),
    );
  }
}
