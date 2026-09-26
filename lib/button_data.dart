// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:custom_signin_buttons/custom_signin_buttons.dart';

class SignInButton extends StatelessWidget {
  final Button button;
  final double borderRadius;
  final double height;
  final double? iconLeftPadding;
  final double iconSize;
  final bool mini;
  final bool small;
  final bool showText;
  final Function()? onPressed;
  final Color splashColor;
  final String? text;
  final double textSize;
  final double width;
  final bool spanish;

  SignInButton({
    super.key,
    this.button = Button.YoutubeDark,
    this.borderRadius = 5,
    this.height = 40,
    this.iconLeftPadding,
    this.iconSize = 24,
    this.mini = false,
    this.small = false,
    this.showText = true,
    this.onPressed,
    this.splashColor = Colors.white30,
    this.text = '',
    this.textSize = 15,
    this.width = double.infinity,
    this.spanish = false,
  });

  @override
  Widget build(BuildContext context) {
    var texto = '';
    spanish ? texto = 'Iniciar Sesion con' : texto = 'Sign in with';
    switch (button) {
      case Button.Apple:
      case Button.AppleWithOutline:
      case Button.AppleDark:
        return CustomSignInButton(
            key: ValueKey('Apple'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Apple',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            borderWidth: button == Button.AppleWithOutline ? 1.0 : 0.0,
            borderColor: button == Button.AppleWithOutline
                ? Colors.black
                : Colors.transparent,
            buttonColor:
                button == Button.AppleDark ? Colors.black : Colors.white,
            textColor:
                button == Button.AppleDark ? Colors.white : Colors.black,
            customIcon: FontAwesomeIcons.apple,
            iconColor:
                button == Button.AppleDark ? Colors.white : Colors.black,
            iconLeftPadding: iconLeftPadding ?? (mini ? 0 : 5),
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Discord:
        return CustomSignInButton(
            key: ValueKey('Discord'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Discord',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF5663F7),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.discord,
            iconLeftPadding: iconLeftPadding ?? (mini ? 0 : 9),
            imagePadding: EdgeInsets.symmetric(vertical: 3),
            imageMargin: EdgeInsets.only(right: 5, top: 4),
            iconColor: Colors.white,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Email:
        return CustomSignInButton(
            key: ValueKey('Email'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Email',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Colors.black12,
            textColor: Colors.black,
            customIcon: FontAwesomeIcons.envelope,
            iconColor: Colors.black87,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Facebook:
      case Button.FacebookNew:
        return CustomSignInButton(
            key: ValueKey('Facebook'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Facebook',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: button == Button.FacebookNew
                ? Color(0xFF1877f2)
                : Color(0xFF3B5998),
            textColor: Colors.white,
            customIcon: button == Button.FacebookNew
                ? FontAwesomeIcons.facebook
                : FontAwesomeIcons.facebookF,
            // iconSize: button == Button.FacebookNew ? 28 : 25,
            iconColor: Colors.white,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.GitHub:
        return CustomSignInButton(
            key: ValueKey('GitHub'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto GitHub',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF444444),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.github,
            iconColor: Colors.white,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Google:
      case Button.GoogleDark:
      case Button.GoogleNeutral:
        return CustomSignInButton(
            key: ValueKey('Google'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Google',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            borderWidth: button == Button.GoogleNeutral ? 0.0 : 1.0,
            borderColor: button == Button.GoogleNeutral
                ? Colors.transparent
                : button == Button.GoogleDark
                    ? Color(0xFF8E918F)
                    : Color(0xFF747775),
            buttonColor: button == Button.GoogleNeutral
                ? Color(0xFFF2F2F2)
                : button == Button.GoogleDark
                    ? Color(0xFF131314)
                    : Color(0xFFFFFFFF),
            textColor:
                (button == Button.GoogleNeutral || button == Button.Google)
                    ? Color(0xFF1F1F1F)
                    : Color(0xFFE3E3E3),
            imageBackgroundColor: Colors.transparent,
            useGoogleImage: true,
            iconLeftPadding: iconLeftPadding ?? 6.0,
            iconSize: iconSize,
            imageSize: iconSize,
            textSize: textSize,
            onPressed: onPressed,
          );
      case Button.GooglePlay:
        return CustomSignInButton(
            key: ValueKey('GooglePlay'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto PlayStore',
            showText: showText,
            height: height,
            width: width,
            setAssetImage: AssetImage(
              'assets/playstore.png',
              package: 'custom_signin_buttons',
            ),
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFFF6F6F6),
            textColor: Colors.black87,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Instagram:
      case Button.InstagramGradient:
        return CustomSignInButton(
            key: ValueKey('Instagram'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Instagram',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFFDD2A7B),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.instagram,
            useGradient: button == Button.InstagramGradient ? true : false,
            setGradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: const [
                  Color(0xFFF58529),
                  Color(0xFFDD2A7B),
                  Color(0xFF8134AF),
                  Color(0xFF515BD4)
                ],
                stops: const [
                  0,
                  0.40,
                  0.70,
                  1
                ]),
            iconColor: Colors.white,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.LinkedIn:
        return CustomSignInButton(
            key: ValueKey('LinkedIn'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto LinkedIn',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF007BB5),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.linkedinIn,
            iconColor: Colors.white,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Pinterest:
        return CustomSignInButton(
            key: ValueKey('Pinterest'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Pinterest',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFFCB1F27),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.pinterest,
            iconColor: Colors.white,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.PlayStation:
      case Button.PlayStationGradient:
        return CustomSignInButton(
            key: ValueKey('PlayStation'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto PSN',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF00439c),
            useGradient: button == Button.PlayStationGradient ? true : false,
            setGradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: const [
                  Color(0xFF00246E),
                  Color(0xFF0172D0),
                ],
                stops: const [
                  0.1,
                  0.9
                ]),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.playstation,
            imagePadding: EdgeInsets.symmetric(vertical: 3),
            iconColor: Colors.white,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Reddit:
      case Button.RedditGradient:
        return CustomSignInButton(
            key: ValueKey('Reddit'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Reddit',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFFFF4500),
            useGradient: button == Button.RedditGradient ? true : false,
            setGradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: const [
                  Color(0xFFef131a),
                  Color(0xFFFF4500),
                ],
                stops: const [
                  0.1,
                  0.4
                ]),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.reddit,
            imagePadding: EdgeInsets.symmetric(vertical: 3),
            iconColor: Colors.white,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Spotify:
      case Button.SpotifyLight:
        return CustomSignInButton(
            key: ValueKey('Spotify'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Spotify',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: button == Button.SpotifyLight
                ? Color(0xFF1DB954)
                : Color(0xFF222222),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.spotify,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            iconColor: button == Button.SpotifyLight
                ? Colors.white
                : Color(0xFF1DB954),
            textSize: textSize,
            onPressed: onPressed);
      case Button.Steam:
      case Button.SteamGradient:
        return CustomSignInButton(
            key: ValueKey('Steam'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Steam',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            useGradient: button == Button.SteamGradient ? true : false,
            setGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: const [
                Color(0xFF0a1a35),
                Color(0xFF133669),
                Color(0xFF1384b5)
              ],
              stops: const [0, 0.65, 1],
            ),
            buttonColor: Color(0xFF133669),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.steamSymbol,
            iconColor: Colors.white,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.TikTok:
        return CustomSignInButton(
            key: ValueKey('TikTok'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto TikTok',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            setAssetImage: AssetImage('assets/tiktok.png',
                package: 'custom_signin_buttons'),
            imageSize: 24,
            buttonColor: Colors.black,
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.twitter,
            iconColor: Colors.white,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Twitch:
      case Button.TwitchLight:
        return CustomSignInButton(
            key: ValueKey('Twitch'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Twitch',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: button == Button.TwitchLight
                ? Color(0xFF9146FF)
                : Color(0xFFFBFBFB),
            textColor:
                button == Button.TwitchLight ? Colors.white : Colors.black,
            customIcon: FontAwesomeIcons.twitch,
            iconColor:
                button == Button.TwitchLight ? Colors.white : Color(0xFF9146FF),
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Twitter:
        return CustomSignInButton(
            key: ValueKey('Twitter'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Twitter',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF1DA1F2),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.twitter,
            iconColor: Colors.white,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Xbox:
      case Button.XboxDark:
        return CustomSignInButton(
            key: ValueKey('Xbox'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Xbox',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor:
                button == Button.Xbox ? Color(0xFFFBFBFB) : Color(0xFF107C10),
            textColor:
                button == Button.Xbox ? Colors.black87 : Color(0xFFF3F2F1),
            customIcon: FontAwesomeIcons.xbox,
            iconColor:
                button == Button.Xbox ? Color(0xFF107C10) : Color(0xFFF3F2F1),
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Youtube:
      case Button.YoutubeDark:
        return CustomSignInButton(
            key: ValueKey('Youtube'),
            mini: mini,
            small: small,
            text: text!.isNotEmpty ? text! : '$texto Youtube',
            showText: showText,
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: button == Button.Youtube
                ? Color(0xFFFBFBFB)
                : Color(0xFFFF0000),
            textColor: button == Button.Youtube ? Colors.black87 : Colors.white,
            iconColor: button == Button.Youtube
                ? Color(0xFFFF0000)
                : Color(0xFFFBFBFB),
            customIcon: FontAwesomeIcons.youtube,
            iconLeftPadding: iconLeftPadding ?? 0,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
    }
  }
}
