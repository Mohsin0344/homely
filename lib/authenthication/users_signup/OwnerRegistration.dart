import 'package:flutter/material.dart';
import 'package:homely/authenthication/signin.dart';
import 'package:homely/responsive/size_config.dart';
import 'package:page_transition/page_transition.dart';
class OwnerRegistration extends StatefulWidget {
  @override
  _OwnerRegistrationState createState() => _OwnerRegistrationState();
}

class _OwnerRegistrationState extends State<OwnerRegistration> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
                title: 'Learning Platform Application',
                home: SafeArea(
                  child: Scaffold(
                    body: Center(
                      child: Container(
                        // color: Colors.orange,
                          width: SizeConfig.widthMultiplier * 200,
                          height: SizeConfig.heightMultiplier * 100,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left:SizeConfig.isMobilePortrait?SizeConfig.widthMultiplier*8:SizeConfig.widthMultiplier*15,
                              right: SizeConfig.isMobilePortrait?SizeConfig.widthMultiplier*8:SizeConfig.widthMultiplier*15,
                            ),
                            child: ListView(
                              children: [

                                SizedBox(
                                  height: SizeConfig.isMobilePortrait?SizeConfig.heightMultiplier*7: SizeConfig.heightMultiplier*3,
                                ),

                                Align(
                                  alignment: Alignment.topLeft,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(seconds: 1), child: SignInScreen()));
                                    },
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                          Icons.arrow_back
                                      ),
                                    ),
                                  ),
                                ),


                                Padding(
                                  padding: EdgeInsets.only(top: SizeConfig.isMobilePortrait?SizeConfig.heightMultiplier*16: SizeConfig.heightMultiplier*5),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text("Add Details", style: TextStyle(
                                      color: Colors.black,
                                      fontSize:SizeConfig.textMultiplier*4,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:'Montserrat',
                                    ),),
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier*5,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: TextField(
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color:   Color(0xFF115173), width: 3.0),
                                          ),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFC4C4C4),

                                              )
                                          ),
                                          labelText: "EMAIL", labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFBCBCBC),
                                      )
                                      )
                                  ),
                                ),

                                SizedBox(
                                  height: SizeConfig.heightMultiplier*3,
                                ),



                                /// password
                                TextField(
                                    decoration: InputDecoration(


                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:   Color(0xFF115173), width: 3.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFC4C4C4),

                                            )
                                        ),
                                        labelText: "PASSWORD", labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFBCBCBC),
                                    )
                                    )
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier*3,
                                ),


                                TextField(
                                    decoration: InputDecoration(


                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:   Color(0xFF115173), width: 3.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFC4C4C4),

                                            )
                                        ),
                                        labelText: "PHONE NUMBER", labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFBCBCBC),
                                    )
                                    )
                                ),

                                SizedBox(
                                  height: SizeConfig.heightMultiplier*3,
                                ),


                                TextField(
                                    decoration: InputDecoration(


                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:   Color(0xFF115173), width: 3.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFC4C4C4),

                                            )
                                        ),
                                        labelText: "DATE OF BIRTH", labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFBCBCBC),
                                    )
                                    )
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier*3,
                                ),



                                SizedBox(
                                  height: SizeConfig.heightMultiplier*3,
                                ),


                                Container(
                                  child: Container(
                                    width: SizeConfig.widthMultiplier*200,
                                    height: SizeConfig.heightMultiplier*7,

                                    decoration: BoxDecoration(

                                      borderRadius: BorderRadius.all(Radius.circular(10)),

                                    ),
                                    child: RaisedButton(
                                      color: Color(0xFF115173),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Text(
                                        "SAVE",
                                        style: TextStyle(
                                            fontFamily:'Montserrat',
                                            fontSize: SizeConfig.textMultiplier*2.3,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      onPressed: (){

                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier*3,
                                ),














                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                ));
          },
        );
      },
    );
  }
}
