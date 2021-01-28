import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homely/responsive/size_config.dart';

class OwnerPropertyDetails extends StatefulWidget {
  @override
  _OwnerPropertyDetailsState createState() => _OwnerPropertyDetailsState();
}

class _OwnerPropertyDetailsState extends State<OwnerPropertyDetails> {
  bool check = false;

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
                            'Add Tenant Details',
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.textMultiplier * 5.5
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 3,
                        ),
                        textField('First NAME'),
                        SizedBox(
                          height: SizeConfig.heightMultiplier ,
                        ),
                        textField('Last Name'),
                        SizedBox(
                          height: SizeConfig.heightMultiplier ,
                        ),
                        textField('Email'),
                        SizedBox(
                          height: SizeConfig.heightMultiplier ,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                flex:6,
                                  child: textField('Lease Start Date')),
                              Expanded(child: SizedBox(
                                height: SizeConfig.heightMultiplier * 2,
                              ),),
                              Expanded(
                                flex: 6,
                                  child: textField('Lease End Date')),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier ,
                        ),
                        textField('Rent Amount'),
                        SizedBox(
                          height: SizeConfig.heightMultiplier ,
                        ),
                        Container(
                  child: TextField(
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      height: 1,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.file_copy_outlined,
                        color: Colors.grey,
                      ),
                      hintText: 'Lease Agreement',
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
                ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier ,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier,
                              right: SizeConfig.widthMultiplier * 12,
                            top: SizeConfig.heightMultiplier * 2,
                            bottom: SizeConfig.heightMultiplier * 0.5,
                          ),
                          height: SizeConfig.heightMultiplier * 8,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(12.0)
                          ),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child:Checkbox(
                                  checkColor: Colors.black,
                                  activeColor: Colors.white,
                                value: check,
                                tristate: false,
                                focusColor: Colors.white,
                                onChanged: (bool value) {
                                    setState(() {
                                      check=value;
                                    });
                                }
                                                      ),
                                                            // child: Checkbox(
                                //   value: check,
                                //   activeColor: Colors.white,
                                //   checkColor: Colors.black,
                                //   focusColor: Colors.white,
                                //   onChanged: (val){
                                //     setState(() {
                                //       check = val;
                                //     });
                                //   },
                                // ),
                              ),
                              Expanded(
                                flex: 3,
                                  child: Container(
                                    child: Text(
                                      'Send Invitation to Tenant',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.black.withOpacity(0.4),
                                        fontSize: SizeConfig.textMultiplier * 2.5,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
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
                                      'UPDATE',
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
            height: 1,
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
