import 'package:flutter/material.dart';
import 'package:my_first_app/ui/views/about/about_view.dart';
import 'package:my_first_app/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, homeModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Stacked Counter App'),
              backgroundColor: Colors.blue[400],
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(homeModel.counter.toString(),
                      style: TextStyle(fontSize: 30)),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        homeModel.addCounterValue();
                      },
                      child: Text('Add Counter')),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: ()async {
                       await Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutView()));
                        homeModel.rebuildUi();
                      }, child: Text('Go to About Screen'))
                ],
              ),
            ),
          );
        });
  }
}
