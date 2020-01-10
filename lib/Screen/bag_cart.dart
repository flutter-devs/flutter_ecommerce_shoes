import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/Animation/fade_animation.dart';
import 'package:shoes_ecommerce_app/Constants/constants.dart';
import 'package:shoes_ecommerce_app/Model/my_bag.dart';
class BagCart extends StatefulWidget {
  @override
  _BagCartState createState() => _BagCartState();
}

class _BagCartState extends State<BagCart> {
  double _height;
  double _width;

  List<MyBag>myBag;

  @override
  void initState() {
    myBag=Constants.getMyBag();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        elevation:0,
        leading:InkWell(
          child:Icon(Icons.arrow_back,color:Colors.black,),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
      ),

      body:Container(
        height:_height,
        width: _width,
        // color: Colors.red,
        child:Column(
          children: <Widget>[

            Padding(
              padding: EdgeInsets.only(left: 20.0,right: 20.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('My Bag',style: TextStyle(fontSize:30.0,fontWeight: FontWeight.bold,letterSpacing:0.5),),
                  Text('Total 4 Items',style: TextStyle(fontSize:15.0,fontWeight: FontWeight.w600,letterSpacing:0.5),),
                ],
              ),
            ),

            Container(
              margin:EdgeInsets.only(top:10.0),
              height:1.0,
              color: Colors.grey[200],
            ),


            Expanded(child:FadeAnimation(1.0,Container(
              height:_height/1.7,
              width:_width,
              //color: Colors.grey,
              child: ListView.builder(
                  itemCount: myBag.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder:(BuildContext context,int index){
                    return _buildMyBag(myBag[index]);
                  }
              ),
            )),),

            Container(
              margin:EdgeInsets.only(top:20.0,left: 20.0,right: 20.0),
              height:1.0,
              color: Colors.grey[200],
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.0,right: 20.0,top:30.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('TOTAL',style: TextStyle(fontSize:14.0,fontWeight: FontWeight.w600),),
                  Text('\$510.40',style: TextStyle(fontSize:18.0,fontWeight: FontWeight.bold,letterSpacing:0.2),),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left:30.0,right:30.0,top:20.0),
              height: _height/16,
              width: _width,
              child:RaisedButton(
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                  color: Colors.red,
                  child: Text('NEXT',style:TextStyle(color:Colors.white),),
                  onPressed:(){}
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMyBag(MyBag item) {
    return Container(
      height:_height/5.0,
      width:_width,
      // color:Colors.cyan,

      child:Padding(
        padding:EdgeInsets.only(left:20.0,right: 20.0,top: 10.0,bottom: 10.0),
        child:Row(
          children: <Widget>[
            Container(
              // padding:EdgeInsets.only(top: 20.0),
              height: _height/5,
              width: _width/2.9,
              // color: Colors.red,
              child:Stack(
                children: <Widget>[
                  FadeAnimation(1.2,Container(
                    margin:EdgeInsets.only(top:20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.blueGrey[100],
                    ),
                    height: _height/8,
                    width: _width/3.5,
                  )),
                  // Image.asset('assets/images/Nike_Shoe_PNG.png',fit:BoxFit.fill,),
                  Align(
                    /* top:0,
 left:20.0,bottom:5.0,*/
                    alignment: Alignment.topCenter,
                    child: FadeAnimation(1.7,Container(
                      // height:_height/5,
                      // width:100.0,
                      // alignment: Alignment.center,
                      padding:EdgeInsets.only(bottom:30.0,left:10.0),
                      // color: Colors.grey,
                      child:Image.asset(item.img ,fit:BoxFit.fill,height:100,width:100,),
                    )),
                  ),

                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left:10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top:10.0),
                    //color: Colors.cyan,
                    //width:_width,
                    alignment: Alignment.topLeft,
                    child:Text(item.title,style: TextStyle(fontSize:12.0,fontWeight: FontWeight.w600,letterSpacing: 0.3)
                        ,maxLines:2),
                  ),

                  // SizedBox(height: 5.0,),

                  Container(
                    // color: Colors.cyan,
                    //width:_width,
                    alignment: Alignment.topLeft,
                    child: Text(item.price,style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding:EdgeInsets.only(top:0.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          height:_height/25.0,
                          width:_width/10.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.grey[200],
                          ),
                          //child:Text('-'),
                          child:Image.asset('assets/images/plus_sign.png',height:15.0,width:15.0,),
                        ),

                        Container(
                          height:_height/25.0,
                          width:_width/10.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                            color: Colors.white,
                          ),
                          child:Text('1',textAlign: TextAlign.center,),
                        ),

                        Container(
                          alignment: Alignment.center,
                          height:_height/25.0,
                          width:_width/10.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.grey[200],
                          ),
                          //child:Text('+'),
                          child:Image.asset('assets/images/substraction_sign.png',height:15.0,width:15.0,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
