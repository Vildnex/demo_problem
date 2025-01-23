import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'widgetbook.directories.g.dart';

const Size defaultDesignSize = Size(375, 812);

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: <WidgetbookAddon>[
        TextScaleAddon(),
        DeviceFrameAddon(
          devices: <DeviceInfo>[
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone12,
            Devices.ios.iPhone13,
            DeviceInfo.genericPhone(
              id: 'android-device',
              name: 'Huawei Pura 70',
              platform: TargetPlatform.android,
              // screenSize: const Size(1260, 2844),
              screenSize: const Size(1260, 2844),
            )
          ],
        ),
        BuilderAddon(
          name: 'ScreenUtil',
          builder: (BuildContext context, Widget child) {
            return ScreenUtilInit(
              designSize: defaultDesignSize,
              minTextAdapt: true,
              splitScreenMode: true,
              // This is needed to use the workbench [MediaQuery]
              useInheritedMediaQuery: true,
              builder: (BuildContext context, Widget? child) => child!,
              child: child,
            );
          },
        ),
        InspectorAddon(),
        GridAddon(100),
        AlignmentAddon(),
      ],
    );
  }
}
