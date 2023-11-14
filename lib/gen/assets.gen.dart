/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $ImagesGen {
  const $ImagesGen();

  /// File path: images/cardBoard.png
  AssetGenImage get cardBoard => const AssetGenImage('images/cardBoard.png');

  /// File path: images/cargo.png
  AssetGenImage get cargo => const AssetGenImage('images/cargo.png');

  /// File path: images/plane.png
  AssetGenImage get plane => const AssetGenImage('images/plane.png');

  /// File path: images/receive.png
  AssetGenImage get receive => const AssetGenImage('images/receive.png');

  /// File path: images/redtruck.png
  AssetGenImage get redtruck => const AssetGenImage('images/redtruck.png');

  /// File path: images/send_package.png
  AssetGenImage get sendPackage =>
      const AssetGenImage('images/send_package.png');

  /// File path: images/ship.png
  AssetGenImage get ship => const AssetGenImage('images/ship.png');

  /// File path: images/truck1.png
  AssetGenImage get truck1 => const AssetGenImage('images/truck1.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [cardBoard, cargo, plane, receive, redtruck, sendPackage, ship, truck1];
}

class Moniepoint {
  Moniepoint._();

  static const $ImagesGen images = $ImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
