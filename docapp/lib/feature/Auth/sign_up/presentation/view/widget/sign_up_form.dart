import 'package:docapp/core/utils/app_strimg.dart';
import 'package:docapp/feature/Auth/sign_in/presentation/view/sign_in_view.dart';
import 'package:docapp/feature/Auth/sign_up/presentation/manger/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widget/constant.dart';
import '../../../../../../core/widget/defolt-button.dart';
import '../../../../../../core/widget/form_error.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool? remember = false;

  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<SignUpCubit>();
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Loggedin Successfuly')));
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return SignInView();
          }));
        } else if (state is SignUpFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
          key: cubit.signUpFormKey,
          child: Column(
            children: [
              buildFormField(
                  labelText: 'name',
                  hintText: 'name',
                  controller: cubit.signUpName),
              const SizedBox(height: (16)),
              buildEmailFormField(controller: cubit.signUpEmail),
              const SizedBox(height: (16)),
              buildphoneFormField(controller: cubit.signUpPhoneNumber),
              const SizedBox(height: (16)),

              buildgenderdFormField(controller: cubit.signUpgender),
              const SizedBox(height: (16)),
              buildFormField(
                  obscureText: true,
                  hintText: 'Password',
                  labelText: 'Password',
                  controller: cubit.signUpPassword),
              const SizedBox(height: (16)),
              buildFormField(
                  obscureText: true,
                  hintText: 'Confirm Password',
                  labelText: 'Confirm Password',
                  controller: cubit.signUpconfirmPassword),

              const SizedBox(height: (26)),

              //
              FormError(errors: errors),
              const SizedBox(height: (20)),
              state is SignUpLoadingState
                  ? Center(child: CircularProgressIndicator())
                  : DefaultButton(
                      text: AppStrings.createAccount,
                      press: () {
                        if (cubit.signUpFormKey.currentState!.validate()) {
                          // cubit.signUpFormKey.currentState!.save();
                          cubit.signup();
                          // BlocProvider.of<SignUpCubit>(context).signUpMethod(
                          //     email: emailcontrollar.text,
                          //     password: passwordcontrollar.text,P
                          //     gender: gendercontrollar.text,
                          //     phone: phonecontrollar.text);
                        }
                      },
                    ),
            ],
          ),
        );
      },
    );
  }

  TextFormField buildFormField(
      {required String labelText,
      required String hintText,
      required TextEditingController controller,
      obscureText = false}) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? true,
      // onChanged: onChanged,
      validator: (value) {
        if (controller.text.isEmpty) {
          addError(error: kPassNullError);
          return "";
        }
        // else if (controller.text.length < 8) {
        //   addError(error: kShortPassError);
        //   return "";
        // }
        return null;
      },
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: focusoutlineInputBorder(),
        focusedBorder: outlineInputBorder(),
      ),
    );
  }

  TextFormField buildphoneFormField({
    required TextEditingController controller,
  }) {
    return TextFormField(
      controller: controller,

      // onChanged: onChanged,
      validator: (value) {
        if (controller.text.isEmpty) {
          addError(error: kphoneNullError);
          return "";
        }
        // else if (controller.text.length < 12) {
        //   addError(error: kShortPassError);
        //   return "";
        // }
        // return null;
      },
      decoration: InputDecoration(
        labelText: "phone",
        hintText: " phone",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: focusoutlineInputBorder(),
        focusedBorder: outlineInputBorder(),
      ),
    );
  }

  TextFormField buildgenderdFormField({
    required TextEditingController controller,
  }) {
    return TextFormField(
      controller: controller,

      // onChanged: onChanged,
      validator: (value) {
        if (controller.text.isEmpty) {
          addError(error: kgenderNullError);
          return "";
        }
        //  else if (controller.text.length < 8) {
        //   addError(error: kShortPassError);
        //   return "";
        // }
        // return null;
      },
      decoration: InputDecoration(
        labelText: "Gender",
        hintText: " Gender",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: focusoutlineInputBorder(),
        focusedBorder: outlineInputBorder(),
      ),
    );
  }

  TextFormField buildEmailFormField(
      {required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (controller.text.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        }
        //  else if (!emailValidatorRegExp.hasMatch(value!)) {
        //   addError(error: kInvalidEmailError);
        //   return "";
        // }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: " email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: outlineInputBorder(),
        focusedBorder: focusoutlineInputBorder(),
      ),
    );
  }
}
