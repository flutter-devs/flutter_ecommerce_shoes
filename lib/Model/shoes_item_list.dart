import 'package:flutter/material.dart';

class ShoesItemList{
  Color _color;
  String _img;
  String _title;
  String _subTitle;
  String _price;


  ShoesItemList(this._color,this._img,this._title,this._subTitle,this._price);

  Color get color=>_color;
  String get img=>_img;
  String get title=>_title;
  String get subTitle=>_subTitle;
  String get price=>_price;
}
