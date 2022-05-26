import 'package:bloc/bloc.dart';


class FirstCheckBoxCubit extends Cubit<bool> {
  FirstCheckBoxCubit(super.initialState);

  checkChange({required value}){

    emit(value);

  }
}
