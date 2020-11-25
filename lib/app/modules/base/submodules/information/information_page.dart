import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:info_covid19/app/core/constants/constants.dart';
import 'information_controller.dart';
import 'widgets/widgets.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState
    extends ModularState<InformationPage, InformationController> {
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
              LocaleProvider.of(context).information.toUpperCase(),
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          body: controller.tipsList != null && controller.symptomsList != null
              ? Container(
                  height: SizeConst.screenHeight,
                  width: SizeConst.screenWidth,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: <Widget>[
                        SubtitleInformation(
                          subtitle: LocaleProvider.of(context).tips,
                        ),
                        ListTips(),
                        SubtitleInformation(
                            subtitle: LocaleProvider.of(context).symptoms),
                        ListSymptoms(),
                      ],
                    ),
                  ),
                )
              : Container(
                  height: 500,
                  width: 500,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
        );
      },
    );
  }
}
