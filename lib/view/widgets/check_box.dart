import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../controller/cubit/first_check_box_cubit.dart';

class MyCheckBox extends StatelessWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirstCheckBoxCubit, bool>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Transform.scale(
                  scale: 1.3.sp,
                  child: Align(
                    alignment: Alignment.center,
                    child: Checkbox(
                      activeColor: AppColors.buttonColor,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: AppColors.buttonColor, //your desire colour here
                            width: 3.sp,
                          ),
                          borderRadius: BorderRadius.circular(3.r)),
                      checkColor: AppColors.primaryColor,

                      value: state,
                      onChanged: (value) {
                        context
                            .read<FirstCheckBoxCubit>()
                            .checkChange(value: !state);
                      },
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: ' I agree to the   ',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                    TextSpan(
                      text: 'Terms and condition',
                      style: TextStyle(color: AppColors.buttonColor,fontWeight: FontWeight.bold,    decoration: TextDecoration.underline,),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
