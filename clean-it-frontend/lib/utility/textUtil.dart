import 'package:cleanit/utility/colorUtil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Text txt(text,
    {isBold = false,
    size = 13,
    font = 'Noto Sans',
    TextDecoration decoration = TextDecoration.none,
    Color color = AppColors.txtColor,
    weight = FontWeight.normal,
    TextOverflow overflow = TextOverflow.ellipsis,
    TextAlign textAlign = TextAlign.left}) {
  return Text(
    text,
    overflow: overflow,
    textAlign: textAlign,
    style: GoogleFonts.getFont(
      font,
      color: color,
      fontWeight: isBold ? FontWeight.bold : weight,
      fontSize: ScreenUtil().setSp(size),
      decoration: decoration,
    ),
  );
}
