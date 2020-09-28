import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:info_covid19/app/core/models/all_models/country_model.dart';
import '../../../../core/constants/constants.dart';
import 'home_controller.dart';
import 'widgets/all_widgets/test_covid19.dart';
import 'widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Observer(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0,
            title: Text(
              "Informa Covid-19".toUpperCase(),
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Ionicons.ios_menu,
                color: IconsColorsConst.icons,
                size: 32,
              ),
              onPressed: () {},
            ),
          ),
          body: (controller.countryModel != null)
              ? Container(
                  height: SizeConst.screenHeight,
                  width: SizeConst.screenWidth,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        TestCovid19(),
                      ],
                    ),
                  ),
                )
              : Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
