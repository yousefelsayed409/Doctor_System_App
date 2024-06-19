import 'package:bloc/bloc.dart';
import 'package:docapp/core/utils/bloc_observer.dart';
import 'package:flutter/material.dart';

import 'core/api/end_poind.dart';
import 'core/app/App.dart';
import 'core/helper/cash_helper.dart';

///po@po.com
///123123123
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper().init();
  Token = await CacheHelper().getData(key: ApiKey.token);
  print('_____________________________ token is $Token');
  runApp(const DocApp());
}
