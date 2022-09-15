import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_apps/utils/constants.dart';
import 'package:my_apps/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../models/design_process.dart';

List<DesignProcess> designProcess = [
  DesignProcess(
      title: "DEVELOP",
      imagePath: "assets/develop.png",
      subTitle: "A Flutter developer....."),
  DesignProcess(
      title: "DESIGN",
      imagePath: "assets/develop.png",
      subTitle: "A Flutter developer....."),
  DesignProcess(
      title: "DESIGN",
      imagePath: "assets/develop.png",
      subTitle: "A Flutter developer....."),
  DesignProcess(
      title: "DESIGN",
      imagePath: "assets/develop.png",
      subTitle: "A Flutter developer....."),

  // DesignProcess(title: "PROMOTE", imagePath: "assets/promote.png", subTitle: "A promoter........."),
  // DesignProcess(title: "DEVELOP", imagePath: "assets/design.png", subTitle: "A promoter.........."),
];

class CvSection extends StatelessWidget {
  const CvSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ScreenHelper(
        desktop: _buildUi(context, 1000.0),
        tablet: _buildUi(context, 760.0),
        mobile: _buildUi(context, MediaQuery.of(context).size.width * 0.8),
      ),
    );
  }
}

Widget _buildUi(BuildContext context, double width) {
  return ResponsiveWrapper(
    maxWidth: width,
    minWidth: width,
    defaultScale: false,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "BETTER DESIGN, \nBETTER EXPERIENCES",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                height: 1.8,
                fontSize: 18.0,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text("DOWNLOAD CV",
                    style: GoogleFonts.oswald(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 16.0,
                    )),
              ),
            )
          ],
        ),
        SizedBox(
          height: 50.0,
        ),
        //need this container to get the max width before the constraints below
        Container(
          child: LayoutBuilder(builder: (_context, constraints) {
            return ResponsiveGridView.builder(
              padding: EdgeInsets.all(2.0),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              alignment: Alignment.topCenter,
              gridDelegate: ResponsiveGridDelegate(
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                maxCrossAxisExtent: ScreenHelper.isTablet(context) ||
                        ScreenHelper.isMobile(context)
                    ? constraints.maxWidth / 2.0
                    : 250.0,
                childAspectRatio: ScreenHelper.isDesktop(context)
                    ? 1
                    : MediaQuery.of(context).size.aspectRatio * 1.5,

                //to adjust child height
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            designProcess[index].imagePath,
                            width: 40.0,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(designProcess[index].title,
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0,
                              )),
                          SizedBox(
                            height: 15.0,
                          ),

                        ],
                      ),
                      Text(
                        designProcess[index].subTitle,
                        style: TextStyle(
                          color: kCaptionColor,
                          fontSize: 14.0,
                          height: 1.5,
                        ),
                      ),
                    ],

                  ),
                );
              },
              itemCount: designProcess.length,
            );
          }),
        ),
      ],
    ),
  );
}
