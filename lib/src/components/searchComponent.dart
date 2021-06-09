import 'package:e_crm/src/config/appTheme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
          prefixIcon: Icon(EvaIcons.searchOutline),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            borderSide: BorderSide(color: Colors.red, width: .5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            borderSide: BorderSide(
                color: AppTheme.textColor.withOpacity(.3), width: .5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            borderSide: BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            borderSide: BorderSide(
              color: AppTheme.textColor.withOpacity(.3),
              width: 2,
            ),
          ),
          hintText: 'Find your product',
          filled: true,
          hintStyle: TextStyle(
            color: HexColor('#535A6A'),
            height: 1.4,
          ),
          border: InputBorder.none,
          fillColor: AppTheme.fillColor,
        ),
      ),
    );
  }
}
