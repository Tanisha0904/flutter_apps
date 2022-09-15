import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_apps/models/stat.dart';
import 'package:my_apps/utils/constants.dart';
import 'package:my_apps/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

final List<Stat> stats = [
  Stat(count: "__", text: "Projects"),
  Stat(count: "1", text: "Years\nExperience"),
];

class PortfolioStats extends StatelessWidget {
  const PortfolioStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ScreenHelper(
        desktop: _buildUi(1000.0, context),
        tablet: _buildUi(760, context),
        mobile: _buildUi(MediaQuery.of(context).size.width * .8, context),
      ),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    return Container(
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: LayoutBuilder(
          builder: (BuildContext _context, BoxConstraints constraint) {
            return Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              children: stats.map((stat) {
                int index = stats.indexOf(stat);
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: ScreenHelper.isMobile(context)
                        ? constraint.maxWidth / 2.0 - 20
                        : constraint.maxWidth / 4.0 - 20,
                    height: 100.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          stats[index].count,
                          style: GoogleFonts.oswald(
                            fontWeight: FontWeight.w700,
                            fontSize: 32.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          stats[index].text,
                          style: GoogleFonts.oswald(
                            fontSize: 16.0,
                            color: kCaptionColor,
                        )
                        ),
                      ],
                    ),
                  );
                },
              ).toList(),
            );
          },
        ),
      ),
    );
  }
}
