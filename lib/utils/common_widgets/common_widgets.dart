// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shimmer/shimmer.dart';

callUnfocus({required BuildContext context}) =>
    FocusManager.instance.primaryFocus!.unfocus();

Size size = const Size(10, 10);

Widget textHelper(
        {required String title,
        Color textColor = Colors.black,
        double? fontSize,
        bool isItalic = false,
        double letterSpacing = 0.0,
        FontWeight fontWeight = FontWeight.normal,
        TextAlign textAlign = TextAlign.center,
        TextDecoration decoration = TextDecoration.none,
        String? fontFamily,
        int? maxLines}) =>
    Text(
      title,
      style: TextStyle(
          letterSpacing: letterSpacing,
          overflow: TextOverflow.fade,
          fontSize: fontSize,
          color: textColor,
          fontWeight: fontWeight,
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
          fontFamily: fontFamily,
          decoration: decoration),
      textAlign: textAlign,
      maxLines: maxLines,
    );

Widget assetImageHelper(
        {required String image, double? height, double? width}) =>
    SizedBox(
      height: height,
      width: width,
      child: Image.asset(image, fit: BoxFit.fill),
    );



Widget clickAble(
        {required Widget child,
        required Function onPressed,
        double radius = 0}) =>
    Material(
        borderRadius: BorderRadius.circular(radius),
        color: Colors.transparent,
        child: InkWell(
            borderRadius: BorderRadius.circular(radius),
            onTap: () => onPressed(),
            child: child));


Widget simmerWidget(context) => Container(
      color: Colors.transparent,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (_, __) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 10),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150.0,
                  color: Colors.white,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 120.0,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    Expanded(
                      child: Container(
                        height: 120.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                ),
              ],
            ),
          ),
          itemCount: 6,
        ),
      ),
    );
