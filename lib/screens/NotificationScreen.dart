import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homely/responsive/size_config.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int length = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                        Expanded(
                          child: Container(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Notifications',
                              style: GoogleFonts.robotoMono(
                                color: Color(0xffFFFFFF),
                                fontSize: SizeConfig.textMultiplier * 3,
                                fontWeight: FontWeight.w800
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
                  child: length != 0 ?ListView.builder(
                    itemCount: 2,
                    padding: EdgeInsets.only(
                      top: SizeConfig.heightMultiplier * 6,
                      left: SizeConfig.widthMultiplier * 6,
                      right: SizeConfig.widthMultiplier * 6
                    ),
                    itemBuilder: (BuildContext context,index){
                      return Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.heightMultiplier * 2
                        ),
                        height: SizeConfig.heightMultiplier * 13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: Color(0xff707070),
                            width: 1.5
                          )
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: Padding(
                                      child: Image.asset('images/notificationsss.png'),
                                    padding: EdgeInsets.all(6.0),
                                  ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xff707070),
                                    width: 1.5
                                  )
                                ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                padding: EdgeInsets.only(
                                  top: SizeConfig.heightMultiplier * 4,
                                  bottom: SizeConfig.heightMultiplier,
                                  right: SizeConfig.heightMultiplier * 3,
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Homely',
                                          style: GoogleFonts.montserrat(
                                            color: Color(0xff4A4A4A),
                                            fontSize: SizeConfig.textMultiplier * 3,
                                            letterSpacing: 1.5,
                                            fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex:2,
                                      child: Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'You purchased a ticket',
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xff4A4A4A),
                                              fontSize: SizeConfig.textMultiplier * 2.5,
                                              letterSpacing: 2,
                                              fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          '11:50 12/12/2020',
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xff4A4A4A),
                                              fontSize: SizeConfig.textMultiplier * 2,
                                              letterSpacing: 2,
                                              fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ): ListView(
                    padding: EdgeInsets.only(
                        top: SizeConfig.heightMultiplier * 6,
                        left: SizeConfig.widthMultiplier * 6,
                        right: SizeConfig.widthMultiplier * 6
                    ),
                    children: [
                      SizedBox(
                        height: SizeConfig.isMobilePortrait?
                        SizeConfig.heightMultiplier * 20
                        : SizeConfig.heightMultiplier * 5,
                      ),
                      Container(
                       child: Image.asset('images/bell.png',
                       height: SizeConfig.heightMultiplier * 20,
                       ),
                      ),
                      SizedBox(
                        height: SizeConfig.isMobilePortrait?
                        SizeConfig.heightMultiplier * 4:
                        SizeConfig.heightMultiplier * 1.5
                        ,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'You have no latest notifications to show',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: SizeConfig.textMultiplier * 2.5,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      )
                    ],
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
