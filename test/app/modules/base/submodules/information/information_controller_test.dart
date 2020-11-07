import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:info_covid19/app/modules/base/submodules/information/information_controller.dart';
import 'package:info_covid19/app/modules/base/submodules/information/information_module.dart';

void main() {
  initModule(InformationModule());
  // InformationController information;
  //
  setUp(() {
    //     information = InformationModule.to.get<InformationController>();
  });

  group('InformationController Test', () {
    //   test("First Test", () {
    //     expect(information, isInstanceOf<InformationController>());
    //   });

    //   test("Set Value", () {
    //     expect(information.value, equals(0));
    //     information.increment();
    //     expect(information.value, equals(1));
    //   });
  });
}
