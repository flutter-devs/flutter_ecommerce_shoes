import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/Model/more_shoes.dart';
import 'package:shoes_ecommerce_app/Model/my_bag.dart';
import 'package:shoes_ecommerce_app/Model/shoes_categories.dart';
import 'package:shoes_ecommerce_app/Model/shoes_item_list.dart';
class Constants{

  static final String SPLASH_SCREEN = 'SPLASH_SCREEN';

  static final String ECOMMERCE_MAINUI = 'ECOMMERCE_MAINUI';
  static final String SHOES_DETAIL = 'SHOES_DETAIL';

  static final String BAG_CART = 'BAG_CART';

  static List<ShoesItemList>getShoesItemList(){
    return[
      new ShoesItemList(Colors.orange[300],'assets/images/mybag_img1.png', 'NIKE', 'EPIC_REACT', '\$130.00'),
      new ShoesItemList(Colors.blue[400],'assets/images/mybag_img1.png', 'NIKE', 'EPIC_REACT', '\$130.00'),
      new ShoesItemList(Colors.cyan[200],'assets/images/mybag_img1.png', 'NIKE', 'EPIC_REACT', '\$130.00'),
      new ShoesItemList(Colors.grey[300],'assets/images/mybag_img1.png', 'NIKE', 'EPIC_REACT', '\$130.00'),
    ];
  }

  static List<MoreShoes>getMoreShoesList(){
    return[
      new MoreShoes('NEW', 'assets/images/More_img1.jpg', 'NIKE AIR MAX  ', '\$170.00'),
      new MoreShoes('NEW', 'assets/images/more_im_nike.jpg', 'NIKE AIR FORCE', '\$130.00'),
      new MoreShoes('NEW', 'assets/images/rebook_more.png', 'REBOK AIR MAX', '\$120.00'),
      new MoreShoes('NEW', 'assets/images/More_img1.jpg', 'NIKE AIR MAX', '\$100.00'),
    ];
  }

  static List<MyBag>getMyBag(){
    return[
      new MyBag('assets/images/mybag_img1.png', 'AIR JORDANS LANEY JSP', '\$190.00'),
      new MyBag('assets/images/mybag_img1.png', 'HUSTLE-D-9-FLYEASE', '\$130.00'),
      new MyBag('assets/images/mybag_img1.png', 'AIR MAX 270 BIG-KIDS', '\$190.00'),
      new MyBag('assets/images/mybag_img1.png', 'HUSTLE-D-9-FLYEASE', '\$190.00'),
    ];
  }
}


