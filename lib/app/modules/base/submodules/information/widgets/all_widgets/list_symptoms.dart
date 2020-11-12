import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:info_covid19/app/core/constants/constants.dart';
import 'package:info_covid19/app/core/models/models.dart';
import 'package:info_covid19/app/modules/base/submodules/information/information_controller.dart';
import 'package:loading_indicator/loading_indicator.dart';

class ListSymptoms extends StatefulWidget {
  @override
  _ListSymptomsState createState() => _ListSymptomsState();
}

class _ListSymptomsState
    extends ModularState<ListSymptoms, InformationController> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        List<SymptomsModel> symptomsList = controller.symptomsList.data;
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
                indicatorType: Indicator.ballClipRotateMultiple,
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
            staggeredTileBuilder: (index) => StaggeredTile.count(2, 2.7),
            itemCount: symptomsList.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var model = symptomsList[index];
              return Container(
                padding: EdgeInsets.all(SizeConst.paddingHorizontal * 0.5),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      model.title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SvgPicture.network(model.urlImage)
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
