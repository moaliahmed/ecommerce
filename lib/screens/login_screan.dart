import 'package:amazon/bloc/bloc_login/cubit/login_cubit.dart';
import 'package:amazon/component/botton_component.dart';
import 'package:amazon/screens/signUp_screan.dart';
import 'package:amazon/src/navigation_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScrean extends StatelessWidget {
  const LoginScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: BlocProvider(
          create: (context) => LoginCubit(),
          child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return Container();
            },
          ),
        ) ));
  }
}
