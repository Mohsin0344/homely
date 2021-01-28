import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homely/homescreen/HomeScreen.dart';
import 'package:homely/responsive/size_config.dart';
import 'package:page_transition/page_transition.dart';

class PropertyDetails extends StatefulWidget {
  @override
  _PropertyDetailsState createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xff115173),
          child: Column(
            children: [
              Expanded(
                flex: SizeConfig.isMobilePortrait ? 1:2,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: SizeConfig.heightMultiplier * 3,
                        left: SizeConfig.widthMultiplier * 8,
                        right: SizeConfig.widthMultiplier * 8
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: SizeConfig.textMultiplier * 4,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 6,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0)
                      ),
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(
                          top: SizeConfig.heightMultiplier * 6,
                          left: SizeConfig.widthMultiplier * 12,
                          right: SizeConfig.widthMultiplier * 12
                      ),
                      children: [
                        Container(
                          height: SizeConfig.heightMultiplier * 18,
                          child: Image.asset(
                              'images/home.png',
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: SizeConfig.heightMultiplier,
                            bottom: SizeConfig.heightMultiplier,
                            left: SizeConfig.widthMultiplier *  5,
                            right:SizeConfig.widthMultiplier * 3,
                          ),
                          height: SizeConfig.heightMultiplier * 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Color(0xff115173),
                              width: 3
                            )
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerLeft ,
                                  child: Text(
                                    '91BB Bakers Street',
                                    style: GoogleFonts.montserrat(
                                      color: Color(0xff115173),
                                      fontWeight: FontWeight.w700,
                                      fontSize: SizeConfig.textMultiplier * 3
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerLeft ,
                                  child: Text(
                                    'New York City',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xff115173),
                                        fontWeight: FontWeight.w300,
                                        fontSize: SizeConfig.textMultiplier * 2.5
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'USA',
                                      style: GoogleFonts.montserrat(
                                        color: Color(0xff115173),
                                      fontWeight: FontWeight.bold,
                                      fontSize: SizeConfig.textMultiplier * 2.5
                                  ),
                                      children: [
                                        TextSpan(
                                          text: '  0001',
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xff115173),
                                              fontWeight: FontWeight.w300,
                                              fontSize: SizeConfig.textMultiplier * 2.5
                                          ),
                                        )
                                      ]
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            Icons.circle,
                                            color: Colors.grey,
                                            size: SizeConfig.textMultiplier * 1.5,
                                          )
                                        ),
                                      ),
                                      Expanded(
                                        flex: 10,
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Unleased',
                                            style: GoogleFonts.montserrat(
                                                color: Colors.grey
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset('images/bdots.png',
                                  height: SizeConfig.heightMultiplier * 8,
                                    width: SizeConfig.widthMultiplier * 8,
                                  )
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: SizeConfig.heightMultiplier,
                            bottom: SizeConfig.heightMultiplier,
                            left: SizeConfig.widthMultiplier *  5,
                            right:SizeConfig.widthMultiplier * 3,
                          ),
                          height: SizeConfig.heightMultiplier * 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                  color: Color(0xff115173),
                                  width: 3
                              )
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Tenant Details',
                                    style: GoogleFonts.montserrat(
                                     color: Color(0xff115173),
                                      fontSize: SizeConfig.textMultiplier * 3,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                )
                              ),
                              Expanded(
                                child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/bdots.png',
                                      height: SizeConfig.heightMultiplier * 8,
                                      width: SizeConfig.widthMultiplier * 8,
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: SizeConfig.heightMultiplier,
                            bottom: SizeConfig.heightMultiplier,
                            left: SizeConfig.widthMultiplier *  5,
                            right:SizeConfig.widthMultiplier * 3,
                          ),
                          height: SizeConfig.heightMultiplier * 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                  color: Color(0xff115173),
                                  width: 3
                              )
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Payment Details',
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xff115173),
                                          fontSize: SizeConfig.textMultiplier * 3,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  )
                              ),
                              Expanded(
                                child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset('images/bdots.png',
                                      height: SizeConfig.heightMultiplier * 8,
                                      width: SizeConfig.widthMultiplier * 8,
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: SizeConfig.heightMultiplier*10, right: SizeConfig.heightMultiplier*10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff115173),
                              borderRadius: BorderRadius.circular(8)

                            ),

                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                              ),
                              color: Color(0xff115173),
                              child: Text("Finish", style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.textMultiplier*2,
                                color: Colors.white
                              )
                              ),
                              onPressed: (){
                                Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(seconds: 1), child:HomeMainScreen("Owner")));


                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
