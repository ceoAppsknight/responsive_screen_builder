library responsive_screen_builder;

import 'package:flutter/material.dart';

import 'enum/device_screen_type.dart';
import 'ui/sizing_information.dart';

class ResponsiveScreenBuilder extends StatelessWidget {
  const ResponsiveScreenBuilder({
    super.key,
    required this.builder,
  });

  final Widget Function(
    BuildContext context,
    ScreenInformation screenInformation,
  ) builder;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxSizing) {
      var screenInformation = ScreenInformation(
        orientation: mediaQuery.orientation,
        deviceType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
      );
      return builder(context, screenInformation);
    });
  }

  DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
    var orientation = mediaQuery.orientation;
    double deviceWidth = 0;
    if (orientation == Orientation.landscape) {
      deviceWidth = mediaQuery.size.height;
    } else {
      deviceWidth = mediaQuery.size.width;
    }
    if (deviceWidth > 950) {
      return DeviceScreenType.Desktop;
    }
    if (deviceWidth > 600) {
      return DeviceScreenType.Tablet;
    }
    return DeviceScreenType.Mobile;
  }
}
