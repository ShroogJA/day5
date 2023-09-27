import 'Off.dart';
import 'On.dart';

import 'opreation_off_on.dart';

void main() {
  Offlight off = Offlight();
  Onlight on = Onlight();
  OprationOffOn op = OprationOffOn(offon: off);
  op.setstate(on);

  
}
