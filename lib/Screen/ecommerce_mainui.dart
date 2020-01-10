import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoes_ecommerce_app/Animation/fade_animation.dart';
import 'package:shoes_ecommerce_app/Constants/constants.dart';
import 'package:shoes_ecommerce_app/Model/more_shoes.dart';
import 'package:shoes_ecommerce_app/Model/shoes_categories.dart';
import 'package:shoes_ecommerce_app/Model/shoes_item_list.dart';
import 'package:shoes_ecommerce_app/Screen/shoes_detail.dart';
import 'package:shoes_ecommerce_app/widget/custom_shape.dart';

class EcommerceMainUi extends StatefulWidget {
  @override
  _EcommerceMainUiState createState() => _EcommerceMainUiState();
}

class _EcommerceMainUiState extends State<EcommerceMainUi> {
  double _height;
  double _width;

  bool _isSelected;

  int _selectedIndex;

  List<ShoesItemList> shoesItemList;
  List<MoreShoes> moreShoesList;

  PageController pageController;

  @override
  void initState() {
    shoesItemList = Constants.getShoesItemList();
    moreShoesList = Constants.getMoreShoesList();
    pageController = PageController(viewportFraction: 6.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // backgroundColor:Colors.grey[100],
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: null,
          title: Text(
            'Discover',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                letterSpacing: 1.0),
          ),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10.0, top: 8.0, bottom: 8.0),
              height: 45.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 0.0,
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 10.0, top: 10.0, bottom: 8.0, right: 8.0),
              height: 45.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.notification_important,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(0.0),
          height: _height,
          width: _width,
          child: Stack(
            children: <Widget>[
              Container(
               // color: Colors.cyan,
                height: 40.0,
                /* color:_isSelected ? Colors.black:Colors.grey,*/

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 2.1,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Nike',
                            style: TextStyle(
                                /* color:_isSelected ? Colors.black:Colors.grey,*/
                                fontSize: 16.5,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 3.2 / 1,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Addidas',
                            style: TextStyle(
                                fontSize: 16.5,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 3.2 / 1,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Jordan',
                            style: TextStyle(
                                fontSize: 16.5,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 3.2 / 1,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Puma',
                            style: TextStyle(
                                fontSize: 16.5,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 3.2 / 1,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Reebok',
                            style: TextStyle(
                                fontSize: 16.5,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        height: _height / 3,
                        width: _width,
                        // color: Colors.cyan,
                        child: Stack(
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 0.0, left: 20.0),
                                  alignment: Alignment.center,
                                  width: 15.0,
                                  // color: Colors.red,
                                  child: RotatedBox(
                                    quarterTurns: 7,
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Upcoming',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.0),
                                        children: [
                                          WidgetSpan(
                                            child: RotatedBox(quarterTurns: -7),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5.0, left: 20.0),
                                  alignment: Alignment.center,
                                  width: 15.0,
                                  // color: Colors.red,
                                  child: RotatedBox(
                                    quarterTurns: 7,
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Featured',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.0),
                                        children: [
                                          WidgetSpan(
                                            child: RotatedBox(quarterTurns: -7),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5.0, left: 20.0),
                                  alignment: Alignment.center,
                                  width: 15.0,
                                  // color: Colors.red,
                                  child: RotatedBox(
                                    quarterTurns: 7,
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'New',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.0),
                                        children: [
                                          WidgetSpan(
                                            child: RotatedBox(quarterTurns: -7),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: _height / 3,
                              //width: _width/1.2,
                              // color: Colors.red,
                              /* padding: EdgeInsets.only(left:0.0,
 right: 10.0,
 top: 0.0),*/
                              child: PageView.builder(
                                  controller:
                                      PageController(viewportFraction: 0.6),
                                  itemCount: shoesItemList.length,
                                  scrollDirection: Axis.horizontal,
                                  //shrinkWrap: true,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return _buildShoesItemList(
                                        shoesItemList[index], index);
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        height: _height / 20.0,
                        width: _width,
                        // color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'More',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5),
                            ),
                            Icon(Icons.arrow_forward),
                            // Container(child:Image.asset('assets/images/right-arrow.png'),),
                          ],
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          Transform.rotate(
                            angle: 3.1,
                            //transform: Matrix4.skewY(0.3)..rotateZ(3.14 / 12.0),
                            origin: Offset(0.0, 50.0),
                            child: ClipPath(
                              child: Container(
                                margin: EdgeInsets.only(top: 10.0),
                                height: _height / 3.0,
                                width: _width,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  /* gradient: LinearGradient(
 colors:[Color(0xff2159db),Color(0xff753fe4)],
 begin: Alignment.centerRight,
 end: new Alignment(-1.0,-1.0),
 ),*/
                                ),
                              ),
                              clipper: CustomShapeClipper3(),
                            ),
                          ),
                          Container(
                            height: _height / 3.5,
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            child: ListView.builder(
                                itemCount: moreShoesList.length,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return _buildMoreShoesList(
                                      moreShoesList[index]);
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: const EdgeInsets.only(top: 0.0),
            height: 50,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.redAccent,
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.black45,
                ),
                Icon(
                  Icons.home,
                  color: Colors.black45,
                ),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.black45,
                ),
                Icon(
                  Icons.person_outline,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShoesItemList(ShoesItemList item, int index) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 700),
                pageBuilder: (_, __, ___) => ShoesDetail(index: index)));
      },
      child: _selectedIndex != null
          ? _selectedIndex
          : Container(
              // padding:EdgeInsets.only(left:30.0,right:0.0),
              // margin:EdgeInsets.only(left:40.0),
              //height:_height/2.9,
              //width: _width /20,
              // color: Colors.cyan,
              child: Stack(
                children: <Widget>[
                  Hero(
                      tag: "NikeMainBackground" + index.toString(),
                      child: FadeAnimation(
                        0.5,
                        Container(
                          width: _width / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: item.color,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      item.title,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.5),
                                    ),
                                    Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.0),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    child: Text(
                                      item.subTitle,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19.0,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.5),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    child: Text(
                                      item.price,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),

                  // SizedBox(height:10.0,),

                  Align(
                    // top: _height/12,
                    alignment: Alignment.centerRight,
                    heightFactor: 2.5,
                    child: Hero(
                      tag: "NikeImage" + index.toString(),
                      child: FadeAnimation(
                          1.0,
                          Image.asset(
                            item.img,
                            height:_height/6,
                            width:_width/2,
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: EdgeInsets.only(
                        right: 45.0,
                        bottom: 10.0,
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildMoreShoesList(MoreShoes item) {
    return Container(
      margin: EdgeInsets.only(left: 10.0),
      width: _width / 2.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        // color: Colors.white,
      ),
      child: Card(
        elevation: 1.0,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Stack(
                children: <Widget>[
                  Container(
                    // padding: EdgeInsets.only(top:10.0,left:10.0),
                    alignment: Alignment.center,
                    // color: Colors.blueGrey,
                    child: Image.asset(
                      item.img,
                      fit: BoxFit.fill,
                      height:_height/9,
                      width:_width/3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 5.0, left: 5.0),
                          alignment: Alignment.center,
                          height: 60,
                          width: 15.0,
                          color: Colors.red,
                          child: RotatedBox(
                            quarterTurns: 7,
                            child: RichText(
                              text: TextSpan(
                                text: item.title,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                                children: [
                                  WidgetSpan(
                                    child: RotatedBox(quarterTurns: -7),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          height: 20.0,
                          width: 20.0,
                          // color: Colors.blue,
                          child: Image.asset(
                              'assets/images/convert_png_more_img.png'),
                        ),
                        //Icon(Icons.font_download)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      item.subTitle,
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
                    Text(
                      item.price,
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
