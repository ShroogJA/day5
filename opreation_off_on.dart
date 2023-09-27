import 'Off.dart';
import 'On.dart';
import 'interfacestate.dart';

class OprationOffOn {
  late Off_on offon;
  OprationOffOn({required this.offon});
 
  setstate(Off_on state) {
      state.printinformaition();
  }
}
