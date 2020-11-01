import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../core/constants/constants.dart';
import 'test_covid19_controller.dart';

class TestCovid19Page extends StatefulWidget {
  @override
  _TestCovid19PageState createState() => _TestCovid19PageState();
}

class _TestCovid19PageState
    extends ModularState<TestCovid19Page, TestCovid19Controller> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(
          "O que você\nestá se sentindo?".toUpperCase(),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Container(
        height: SizeConst.screenHeight,
        width: SizeConst.screenWidth,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Observer(builder: (_) {
                return Container(
                  width: SizeConst.screenWidth,
                  child: ChipsChoice<String>.multiple(
                    value: controller.sintomasPaciente,
                    choiceActiveStyle: C2ChoiceStyle(
                      color: Theme.of(context).primaryColor,
                      disabledColor: Colors.grey,
                      brightness: Brightness.dark,
                    ),
                    alignment: WrapAlignment.center,
                    wrapCrossAlignment: WrapCrossAlignment.center,
                    wrapped: true,
                    choiceStyle: C2ChoiceStyle(
                      color: Theme.of(context).disabledColor,
                      disabledColor: Colors.grey,
                      brightness: Brightness.dark,
                    ),
                    onChanged: (value) => controller.guardaSintomas(value),
                    choiceItems: C2Choice.listFrom<String, String>(
                      source: DataConst.listaTodosSintomas,
                      value: (i, v) => v,
                      label: (i, v) => v,
                    ),
                  ),
                );
              }),
              Observer(
                builder: (_) {
                  return FlatButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: controller.sintomasPaciente.isNotEmpty
                        ? () {
                            controller.verificaSintomasPaciente();
                            showAnimatedDialog(
                              context: context,
                              barrierDismissible: true,
                              builder: (context) {
                                return CustomDialogWidget(
                                  actions: [
                                    FlatButton(
                                      onPressed: () {
                                        Modular.to.pop();
                                        Modular.to.pop();
                                      },
                                      child: Text(
                                        "Ok!",
                                        style:
                                            Theme.of(context).textTheme.button,
                                      ),
                                    ),
                                  ],
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  content: Text(
                                    controller.defineResultadoTeste(),
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  ),
                                );
                              },
                              animationType: DialogTransitionType.sizeFade,
                              curve: Curves.fastOutSlowIn,
                              duration: Duration(milliseconds: 300),
                            );
                          }
                        : null,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    colorBrightness: Brightness.dark,
                    child: Text(
                      "Confirmar".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
