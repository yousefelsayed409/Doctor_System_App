import 'package:docapp/core/utils/app_strimg.dart';
import 'package:docapp/feature/Auth/sign_in/presentation/manger2/signin_cubit.dart/signin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widget/constant.dart';
import '../../../../../../core/widget/defolt-button.dart';
import '../../../../../../core/widget/form_error.dart';
import 'check_box_widget.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
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
    var cubit = context.read<SigninCubit>();
    return Form(
      key: context.read<SigninCubit>().signInFormKey,
      child: Column(
        children: [
          buildEmailFormField(controller: cubit.signInEmail),
          const SizedBox(height: (16)),
          buildPasswordFormField(controller: cubit.signInPassword),
          const SizedBox(height: (16)),
          CheckBoxWidget(),
          const SizedBox(height: (10)),
          FormError(errors: errors),
          const SizedBox(height: (20)),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField(
      {required TextEditingController controller,
      void Function(String)? onChanged}) {
    return TextFormField(
      controller: controller,
      obscureText: true,
      onChanged: onChanged,
      validator: (value) {
        if (controller.text.isEmpty) {
          addError(error: kPassNullError);
          return "";
        }
        //  else if (controller.text.length < 8) {
        //   addError(error: kShortPassError);
        //   return "";
        // }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: " password",
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
        } else if (!emailValidatorRegExp.hasMatch(value!)) {
          addError(error: kInvalidEmailError);
          return "";
        }
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
