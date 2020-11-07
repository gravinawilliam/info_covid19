import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:info_covid19/app/core/constants/constants.dart';
import 'package:info_covid19/app/core/models/all_models/symptoms_model.dart';
import 'package:info_covid19/app/core/models/all_models/tips_model.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'information_controller.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState
    extends ModularState<InformationPage, InformationController> {
  //use 'controller' variable to access controller
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
                        Container(
                          width: SizeConst.screenWidth,
                          margin: EdgeInsets.symmetric(
                            horizontal: SizeConst.paddingHorizontal,
                          ),
                          child: Text(
                            "Dicas",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        Observer(
                          builder: (_) {
                            List<TipsModel> tipsList = controller.tipsList.data;
                            if (controller.tipsList.hasError) {
                              print(controller.tipsList.error);
                              return Container(
                                color: Colors.transparent,
                                height: SizeConst.screenHeight,
                                width: SizeConst.screenWidth * 0.5,
                                child: Center(
                                  child: RaisedButton(
                                    onPressed: controller.getListTips,
                                    child: Text('Error'),
                                  ),
                                ),
                              );
                            }
                            if (controller.tipsList.data == null) {
                              return Container(
                                color: Colors.transparent,
                                height: 500,
                                width: SizeConst.screenWidth * 0.5,
                                child: Center(
                                  child: LoadingIndicator(
                                    indicatorType:
                                        Indicator.ballClipRotateMultiple,
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            }
                            return Container(
                              width: SizeConst.screenWidth,
                              margin: EdgeInsets.symmetric(
                                horizontal: SizeConst.paddingHorizontal,
                              ),
                              child: StaggeredGridView.countBuilder(
                                primary: true,
                                crossAxisCount: 4,
                                mainAxisSpacing: SizeConst.paddingHorizontal,
                                crossAxisSpacing: SizeConst.paddingHorizontal,
                                staggeredTileBuilder: (index) =>
                                    StaggeredTile.count(2, 2.7),
                                itemCount: tipsList.length,
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  var model = tipsList[index];
                                  return Container(
                                    padding: EdgeInsets.all(
                                        SizeConst.paddingHorizontal * 0.5),
                                    width: (SizeConst.screenWidth -
                                            (3 * SizeConst.paddingHorizontal)) *
                                        0.5,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(
                                        SizeConst.paddingHorizontal,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          model.title,
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2,
                                        ),
                                        SvgPicture.asset(model.urlImage)
                                      ],
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        Container(
                          width: SizeConst.screenWidth,
                          margin: EdgeInsets.symmetric(
                            horizontal: SizeConst.paddingHorizontal,
                          ),
                          child: Text(
                            "Sintomas",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        Observer(
                          builder: (_) {
                            List<SymptomsModel> symptomsList =
                                controller.symptomsList.data;
                            if (controller.symptomsList.hasError) {
                              print(controller.symptomsList.error);
                              return Container(
                                color: Colors.transparent,
                                height: SizeConst.screenHeight,
                                width: SizeConst.screenWidth * 0.5,
                                child: Center(
                                  child: RaisedButton(
                                    onPressed: controller.getListSymptoms,
                                    child: Text('Error'),
                                  ),
                                ),
                              );
                            }
                            if (controller.symptomsList.data == null) {
                              return Container(
                                color: Colors.transparent,
                                height: 500,
                                width: SizeConst.screenWidth * 0.5,
                                child: Center(
                                  child: LoadingIndicator(
                                    indicatorType:
                                        Indicator.ballClipRotateMultiple,
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            }
                            return Container(
                              width: SizeConst.screenWidth,
                              margin: EdgeInsets.symmetric(
                                horizontal: SizeConst.paddingHorizontal,
                              ),
                              child: StaggeredGridView.countBuilder(
                                primary: true,
                                crossAxisCount: 4,
                                mainAxisSpacing: SizeConst.paddingHorizontal,
                                crossAxisSpacing: SizeConst.paddingHorizontal,
                                staggeredTileBuilder: (index) =>
                                    StaggeredTile.count(2, 2.7),
                                itemCount: symptomsList.length,
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  var model = symptomsList[index];
                                  return Container(
                                    padding: EdgeInsets.all(
                                        SizeConst.paddingHorizontal * 0.5),
                                    width: (SizeConst.screenWidth -
                                            (3 * SizeConst.paddingHorizontal)) *
                                        0.5,
                                    decoration: BoxDecoration(
                                      color:
                                          controller.getColorBackgroundSymptoms(
                                              model.status),
                                      borderRadius: BorderRadius.circular(
                                        SizeConst.paddingHorizontal,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          model.title,
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2
                                              .copyWith(
                                                  color: controller
                                                      .getColorTextSymptoms(
                                                          model.status)),
                                        ),
                                        SvgPicture.asset(model.urlImage)
                                      ],
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
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
