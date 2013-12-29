library angulardart_samples;

import 'package:angular/angular.dart';
import 'dart:html';

part 'src/match.dart';
part 'src/toggle.dart';
part 'src/compare_ctrl.dart';
part 'src/is_blank.dart';


main(){
  final sample = new Module()
    ..type(Match)
    ..type(Toggle)
    ..type(CompareCtrl)
    ..type(IsBlank);
  ngBootstrap(module: sample, selector: '#angular-dart');
}