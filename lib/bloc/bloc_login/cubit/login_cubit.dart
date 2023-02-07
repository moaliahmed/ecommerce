import 'package:amazon/models/Authentication.dart';
import 'package:amazon/services/SP/sp_helper.dart';
import 'package:amazon/services/SP/sp_key.dart';
import 'package:amazon/services/dio_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
Authentication? authentication;
  login() {
    emit(LoginLoadingState());
    DioHelper.postData(url: 'login', data: {
      'email': emailController,
      'password': passwordController,
    }).then((value) {
       print('suc');
      emit(LoginSuccsessState());
      authentication=Authentication.fromJson(value.data);
      print(authentication!.data!.accessToken);
      SharedPrefrenceHelper.saveData(key:SPkeys.token , value: authentication!.data!.accessToken);
     

    }).catchError((e) {
      print(e);
      emit(LoginErrorState());
    });
  }
}
