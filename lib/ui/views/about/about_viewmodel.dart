import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/ui/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class AboutViewModel extends BaseViewModel{
  CounterService counterService = locator<CounterService>();
  int get counter => counterService.counter;
  addCounter(){
    counterService.addCounter();
    rebuildUi();
  }
}