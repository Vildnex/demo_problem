import 'package:demo_problem/widget.dart';
import 'package:demo_problem/widgetbook/widgetbook.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(
    ScreenUtilInit(
      designSize: defaultDesignSize,
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: DropdownFieldWithValue(),
          ),
        ),
      ),
    ),
  );
}
