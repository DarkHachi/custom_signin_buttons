// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

class CustomSignInButton extends StatelessWidget {
  final double borderRadius;
  final Color buttonColor;
  final IconData customIcon;
  final double elevation;
  final double height;
  final Color iconColor;
  final double iconSize;
  final Color imageBackgroundColor;
  final EdgeInsetsGeometry imageMargin;
  final EdgeInsetsGeometry imagePadding;
  final double iconLeftPadding;
  final double iconTopPadding;
  final double imageSize;
  final bool mini;
  final bool small;
  final Function()? onPressed;
  final AssetImage setAssetImage;
  final Color splashColor;
  final String text;
  final Color textColor;
  final double textSize;
  final bool useGoogleImage;
  final bool useGradient;
  final bool showText;
  final Gradient setGradient;
  final double width;

  const CustomSignInButton({
    this.borderRadius = 5,
    this.buttonColor = const Color(0xFFEEEEEE),
    this.customIcon = Icons.new_releases_rounded,
    this.elevation = 0,
    this.height = 40,
    this.iconColor = Colors.grey,
    this.iconSize = 24,
    this.imageBackgroundColor = Colors.transparent,
    this.imageMargin = const EdgeInsets.all(4),
    this.imagePadding = const EdgeInsets.all(4),
    this.iconLeftPadding = 0,
    this.iconTopPadding = 0,
    this.imageSize = 25,
    Key? key,
    this.mini = false,
    this.small = false,
    this.onPressed,
    this.setAssetImage = const AssetImage(''),
    this.splashColor = Colors.white,
    this.text = 'New Button',
    this.textColor = Colors.black87,
    this.textSize = 15,
    this.useGoogleImage = false,
    this.useGradient = false,
    this.showText = true,
    this.setGradient = const LinearGradient(colors: [Colors.grey, Colors.grey]),
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        height: mini
            ? 40
            : small
                ? 55
                : height,
        width: mini
            ? 40
            : small
                ? 55
                : width,
        decoration: !useGradient
            ? BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(borderRadius),
              )
            : BoxDecoration(
                gradient: setGradient,
                borderRadius: BorderRadius.circular(borderRadius)),
        child: MaterialButton(
          minWidth: 40,
          padding: EdgeInsets.only(
            left: small ? -2 : iconLeftPadding,
            top: small ? 4 : iconTopPadding,
            bottom: small ? 4 : 0,
          ),
          splashColor: splashColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: imageBackgroundColor,
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  padding: imagePadding,
                  margin: imageMargin,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: useGoogleImage
                        ? Image(
                            image: AssetImage('assets/google.png',
                                package: 'custom_signin_buttons'),
                            height: small ? 34 : imageSize,
                          )
                        : setAssetImage.assetName.isNotEmpty
                            ? Image(
                                image: setAssetImage,
                                height: small ? 34 : imageSize,
                              )
                            : Icon(
                                customIcon,
                                color: iconColor,
                                size: small ? 32 : iconSize,
                              ),
                  )),
              (mini || small)
                  ? SizedBox()
                  : Flexible(
                      child: Center(
                        child: Text(showText ? text : '',
                            style: TextStyle(
                              fontSize: textSize,
                              fontWeight: FontWeight.w600,
                              color: textColor,
                            )),
                      ),
                    ),
            ],
          ),
          onPressed: onPressed ?? () {},
        ),
      ),
    );
  }
}
