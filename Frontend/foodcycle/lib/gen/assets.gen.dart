/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/Profile.png');

  /// File path: assets/images/SellWelcomeScreen.png
  AssetGenImage get sellWelcomeScreen =>
      const AssetGenImage('assets/images/SellWelcomeScreen.png');

  /// File path: assets/images/animal.png
  AssetGenImage get animal => const AssetGenImage('assets/images/animal.png');

  /// File path: assets/images/clasifymenu1.png
  AssetGenImage get clasifymenu1 =>
      const AssetGenImage('assets/images/clasifymenu1.png');

  /// File path: assets/images/clasifymenu2.png
  AssetGenImage get clasifymenu2 =>
      const AssetGenImage('assets/images/clasifymenu2.png');

  /// File path: assets/images/clasifymenu3.png
  AssetGenImage get clasifymenu3 =>
      const AssetGenImage('assets/images/clasifymenu3.png');

  /// File path: assets/images/clasifymenu4.png
  AssetGenImage get clasifymenu4 =>
      const AssetGenImage('assets/images/clasifymenu4.png');

  /// File path: assets/images/eatable.png
  AssetGenImage get eatable => const AssetGenImage('assets/images/eatable.png');

  /// File path: assets/images/uneatable.png
  AssetGenImage get uneatable =>
      const AssetGenImage('assets/images/uneatable.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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

  String get path => _assetName;

  String get keyName => _assetName;
}