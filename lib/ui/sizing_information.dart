import 'package:flutter/material.dart';

import '../enum/device_screen_type.dart';

class ScreenInformation {
  final Orientation orientation;
  final DeviceScreenType deviceType;
  final Size screenSize;
  final Size localWidgetSize;

  ScreenInformation({
    required this.orientation,
    required this.deviceType,
    required this.screenSize,
    required this.localWidgetSize,
  });

  @override
  String toString() {
    return 'SizingInformation(orientation: $orientation, deviceType: $deviceType, screenSize: $screenSize, localWidgetSize: $localWidgetSize)';
  }
}
