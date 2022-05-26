import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';



class FirstCheckBoxCubit extends Cubit<bool> {
  FirstCheckBoxCubit(super.initialState);

  checkChange({required value}){

    emit(value);

  }
}
