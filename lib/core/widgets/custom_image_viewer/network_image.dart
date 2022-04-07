import '/core/constants/asset_constants.dart';
import '/core/constants/base_item_colors.dart';
import 'package:flutter/material.dart';


class CustomNetworkImage extends StatelessWidget {
  final String imagePath;
  final BoxFit boxFit;
  const CustomNetworkImage(
      {required this.imagePath, this.boxFit = BoxFit.fill, Key? key})
      : super(key: key);

  static final BaseItemColors _baseItemColors = BaseItemColors();

  @override
  Widget build(BuildContext context) {
    if (imagePath == "") {
      return _errorImage();
    } else {
      return Image.network(
        imagePath,
        fit: boxFit,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: _baseItemColors.baseWhiteColor,
              color: _baseItemColors.progresIndicatorColor,
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
        errorBuilder:
            (BuildContext context, Object exception, StackTrace? stackTrace) {
          return _errorImage();
        },
      );
    }
  }

  Widget _errorImage() {
    return Container(
      color: _baseItemColors.progresIndicatorColor,
      child: Center(
        child: Image.asset(AssetsConstants.imageLoadingFailed),
      ),
    );
  }
}
