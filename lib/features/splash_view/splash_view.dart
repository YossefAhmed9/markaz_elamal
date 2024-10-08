import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/core/utils/constant.dart';
import 'package:markaz_elamal/core/widgets/login_widgets/form.dart';
import 'package:markaz_elamal/core/widgets/login_widgets/logo_and_name.dart';
import 'package:markaz_elamal/features/authentication_view/authincation.dart';

import '../../core/bloc/auth_cubit/auth_cubit.dart';
import '../../core/bloc/home_cubit/home_cubit.dart';
import '../../core/bloc/home_cubit/home_states.dart';
import '../../core/utils/styles.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        AuthCubit.get(context).navigateToHome(context);
        return Scaffold(
          body: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: AppConstant.primaryColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                //الصورة
                Image.asset(
                  'assets/images/markaz_elamal.png',
                  height: 226.17,
                  width: 178,
                ),
                //الكلام نفسه
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Markaz ElAmal',
                    style: Styles.textStyle16(context).copyWith(
                        color: AppConstant.defaultColor, fontFamily: 'Peralta'),
                  ),
                ),
                const CircularProgressIndicator(
                  color: AppConstant.defaultColor,),
              ],
            ),
          ),
        );
      },
    );
  }
}
