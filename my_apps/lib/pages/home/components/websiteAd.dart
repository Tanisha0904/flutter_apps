import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

class WebsiteAd extends StatelessWidget {
  const WebsiteAd({Key? key}) : super(key: key);

  @override
  //same as ios_ad just by swapping the childres
  Widget build(BuildContext context) {
    return Container(
        child: ScreenHelper(
      desktop: _buildUi(1000.0),
      tablet: _buildUi(760.0),
      mobile: _buildUi(MediaQuery.of(context).size.width * 0.8),
    ));
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        return ResponsiveWrapper(
          maxWidth: width,
          minWidth: width,
          defaultScale: false,
          child: Flex(
            direction:
                constraints.maxWidth > 720 ? Axis.horizontal : Axis.vertical,
            children: [

              Expanded(
                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "WEBSITE",
                        style: GoogleFonts.oswald(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "NAME OF THE WEBSITE HERE",
                        style: GoogleFonts.oswald(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 35.0,
                          height: 1.3,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "lorem ipsum text that is supposed to be long enough bla bla ....",
                        style: TextStyle(
                          color: kCaptionColor,
                          fontSize: 15.0,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              height: 48.0,
                              padding: EdgeInsets.symmetric(
                                horizontal: 28.0,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    "EXPLORE MORE",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: kPrimaryColor,
                                  )),
                              height: 48.0,
                              padding: EdgeInsets.symmetric(horizontal: 28.0),
                              child: TextButton(
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    "NEXT APP",
                                    style: TextStyle(
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 70.0,)
                    ],
                  )),
              SizedBox(width: 25.0,),

              Expanded(
                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                  child: Image.asset(
                    "assets/laptop.png",
                    width: constraints.maxWidth > 720.0
                        ? null
                        : 350.0, //width for smaller screens
                  )),
            ],
          ),
        );
      }),
    );
  }
}
