import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/ui/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  CounterService counterService = locator<CounterService>();
  get counter => counterService.counter;
   

   addCounterValue(){
    counterService.addCounter();
    rebuildUi();
   }
 
}