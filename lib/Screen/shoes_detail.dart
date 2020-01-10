import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/Screen/bag_cart.dart';
import 'package:shoes_ecommerce_app/widget/custom_shape.dart';
class ShoesDetail extends StatefulWidget {
  final int index;

  const ShoesDetail({Key key, this.index}) : super(key: key);
  @override
  _ShoesDetailState createState() => _ShoesDetailState();
}

class _ShoesDetailState extends State<ShoesDetail> {
  double _height;
  double _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:Colors.deepOrange[100],
        //leading: null,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(),

            Text(
              'Nike',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700),
            ),

            Container(
              //margin: EdgeInsets.all(10.0),
              height:50.0,
              width: 50.0,
              /*decoration: BoxDecoration(
 borderRadius: BorderRadius.circular(30.0),
 color:Colors.red[50],
 ),*/

              child:Card(
                elevation:2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.deepOrange[100],
                child:Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),

        /*Text(
 'Nike',
 style: TextStyle(
 color: Colors.white,
 fontSize: 20.0,
 fontWeight: FontWeight.w700),
 ),*/
        /*actions: <Widget>[
 Container(
 margin: EdgeInsets.all(10.0),
 height:45.0,
 width: 40.0,
 decoration: BoxDecoration(
 borderRadius: BorderRadius.circular(30.0),
 color:Colors.grey[200],
 ),
 child:Icon(
 Icons.notification_important,
 color: Colors.black,
 ),
 ),
 ],*/
      ),
      body:Container(
        height:_height,
        width: _width,
        // color: Colors.blue,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag:"NikeImageBackground"+widget.index.toString(),
                  child: ClipPath(
                    child: Container(
                      // margin: EdgeInsets.only(top: 20.0),
                      height: _height/3.7,
                      width: _width,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange[100],
                      ),
                    ),
                    clipper:CustomShapeClipper2(),
                  ),
                ),

                Align(
                  // bottom:0.0,
                  //left:10.0,
                  // top:0.0,
                    alignment: Alignment.centerLeft,
                    child:Hero(tag: "NikeImage"+widget.index.toString(),
                      child: Container(
                        // color: Colors.transparent,
                        padding: EdgeInsets.only(left: 20.0),
                        child:Image.asset('assets/images/Nike_Shoe_PNG.png',height:_height/3.7,fit:BoxFit.cover,),
                      ),)
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left:20.0,right: 20.0,top:30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: _height/12,
                    width: _width/5,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(5.0),
                      color: Colors.grey[200],
                    ),
                    child: Container(
                      height:100,
                      //padding: EdgeInsets.only(top:10.0),
                      alignment: Alignment.center,
                      // color: Colors.red,
                      child:Image.asset('assets/images/shoes_Detail_view.png',height:_height/0.0, width:_width/0.0,
                        alignment: Alignment.center,),
                    ),
                  ),


                  Container(
                    height: _height/12,
                    width: _width/5,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(5.0),
                      color: Colors.grey[200],
                    ),
                    child: Container(
                      height:100,
                      //padding: EdgeInsets.only(top:10.0),
                      alignment: Alignment.center,
                      // color: Colors.red,
                      child:Image.asset('assets/images/shoes_Detail_view.png',height:_height/0.0, width:_width/0.0,
                        alignment: Alignment.center,),
                    ),
                  ),



                  Container(
                    margin:EdgeInsets.only(left:0.0),
                    height: _height/12,
                    width: _width/5,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(5.0),
                      color: Colors.grey[200],
                    ),
                    child: Container(
                      height:100,
                      //padding: EdgeInsets.only(top:10.0),
                      alignment: Alignment.center,
                      // color: Colors.red,
                      child:Image.asset('assets/images/shoes_Detail_view.png',height:_height/0.0, width:_width/0.0,
                        alignment: Alignment.center,),
                    ),
                  ),



                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        height: _height/12,
                        width: _width/5,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(5.0),
                          color: Colors.grey[400],
                        ),
                        child: Container(
                          height:100,
                          //padding: EdgeInsets.only(top:10.0),
                          alignment: Alignment.center,
                          // color: Colors.red,
                          child:Image.asset('assets/images/shoes_Detail_view.png',height:_height/0.0, width:_width/0.0,
                            alignment: Alignment.center,),
                        ),
                      ),

                      Icon(Icons.play_circle_filled,color: Colors.white,),
                    ],
                  ),

                ],
              ),
            ),

            Container(
              height: _height/2.1,
              child: SingleChildScrollView(
                child:Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 20.0,right: 20.0),
                      height:_height/20.0,
                      width:_width,
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Air-Max-270',style:TextStyle(fontSize:20.0,fontWeight: FontWeight.bold,letterSpacing:0.3),),
                          Text('\$150.00',style:TextStyle(fontSize:20.0,fontWeight: FontWeight.bold,),),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top:5.0),
                      padding: EdgeInsets.only(left: 20.0,right:25.0),
                      height: _height/9,
                      width: _width,
                      //color: Colors.red,
                      child: Text('The Nike Air max 270 amps up in iconwith a huge Max'
                          ' Air Unit for cushioning under every step.it feature a stretchy '
                          'inner service for a srug sock like fit',style: TextStyle(fontSize: 13.0,color: Colors.black87,height:1.5,wordSpacing:0.5)
                        ,maxLines: 3,overflow: TextOverflow.fade,),
                    ),

                    Container(
                      // color:Colors.deepOrange,
                      height:30,
                      width:_width,
                      padding: EdgeInsets.only(left:20.0,top:10.0),
                      alignment: Alignment.topLeft,
                      child: Column(
                        //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('MORE DETAILS',style:TextStyle(fontSize:12.0,fontWeight: FontWeight.w600,wordSpacing:1.0),),
                          Container(
                            // height:30,
                            width:83,
                            height:1.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin:EdgeInsets.only(top:30.0),
                      padding: EdgeInsets.only(left: 20.0,right: 20.0),
                      height:_height/20.0,
                      width:_width,
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Size',style:TextStyle(fontSize:20.0,fontWeight: FontWeight.bold),),
                          Container(
                            child:Row(
                              children: <Widget>[
                                Text('UK',style:TextStyle(fontSize:16.0,fontWeight: FontWeight.w900),),
                                SizedBox(width:20.0,),
                                Text('USA',style:TextStyle(fontSize:16.0,fontWeight: FontWeight.w900,color: Colors.black45),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin:EdgeInsets.only(top:20.0),
                      padding: EdgeInsets.only(left: 20.0,right:0.0),
                      height:50.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(0.0),
                            // height:150,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(5.0),
                              border:Border.all(color:Colors.grey[300]),
                              color: Colors.grey[100],
                            ),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text('Try it',style: TextStyle(fontSize:15.0,fontWeight: FontWeight.bold)),
                                Image.asset('assets/images/Nike_Shoe_PNG.png',height: 50.0,width:20.0,),
                              ],
                            ),
                          ),

                          SizedBox(width:10.0,),

                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10.0),
                            height:100,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(5.0),
                              border:Border.all(color:Colors.grey[300]),
                              color: Colors.grey[100],
                            ),
                            child:Text('7.5',style: TextStyle(fontSize:15.0,fontWeight: FontWeight.w700)),
                          ),

                          SizedBox(width:10.0,),

                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10.0),
                            height:100,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(5.0),
                              border:Border.all(color:Colors.grey[300]),
                              color: Colors.grey[100],
                            ),
                            child:Text('8',style: TextStyle(fontSize:15.0,fontWeight: FontWeight.w700)),
                          ),

                          SizedBox(width:10.0,),

                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10.0),
                            height:100,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(5.0),
                              border:Border.all(color:Colors.grey[300]),
                              color: Colors.grey[100],
                            ),
                            child:Text('9.5',style: TextStyle(fontSize:15.0,fontWeight: FontWeight.w700)),
                          ),

                          SizedBox(width:10.0,),

                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10.0),
                            height:100,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(5.0),
                              border:Border.all(color:Colors.grey[300]),
                              color: Colors.grey[100],
                            ),
                            child:Text('10',style: TextStyle(fontSize:15.0,fontWeight: FontWeight.w700)),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin:EdgeInsets.only(top: 10.0),
                      padding: EdgeInsets.only(left:30.0,right: 30.0),
                      height: _height/16,
                      width: _width,
                      /* decoration: BoxDecoration(
 borderRadius: BorderRadius.circular(10.0),
 // color: Colors.red,
 ),*/
                      child:RaisedButton(
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                          color: Colors.red,
                          child: Text('ADD TO BAG',style:TextStyle(color:Colors.white),),
                          onPressed:(){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BagCart()),
                            );
                          }
                      ),
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
