import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homely/responsive/size_config.dart';

class OwnerPaymentDetails extends StatefulWidget {
  @override
  _OwnerPaymentDetailsState createState() => _OwnerPaymentDetailsState();
}

class _OwnerPaymentDetailsState extends State<OwnerPaymentDetails> {
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
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: SizeConfig.textMultiplier * 4,
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
                        left: SizeConfig.widthMultiplier * 6,
                        right: SizeConfig.widthMultiplier * 6
                    ),
                    children: [
                      Container(
                        child: Text(
                          'Add Payment Details',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.textMultiplier * 5
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1.5,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: SizeConfig.widthMultiplier * 20
                        ),
                        child: Text(
                          'Add account information  for rent deposit',
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.textMultiplier * 3
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      textField('BENEFICIARY NAME'),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      textField('BANK CODE'),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      textField('TRANSIT NUMBER'),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      textField('ACCOUNT NUMBER'),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Container(
                        height: SizeConfig.heightMultiplier * 8,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(

                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff115173),
                                  borderRadius: BorderRadius.circular(8.0)
                                ),
                                child: RaisedButton(
                                  onPressed: (){},
                                  color: Color(0xff115173),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)
                                  ),
                                  child: Text(
                                    'SAVE',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
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
  Widget textField(String hint){
    return Container(
      child: TextField(
        style: GoogleFonts.montserrat(
            color: Colors.black,
          height: 1
        ),
        decoration: InputDecoration(
          hintText: '$hint',
          hintStyle: GoogleFonts.montserrat(),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: Color(0xff115173),
                  width: 1
              )
          ),
        ),
      ),
    );
  }
}
