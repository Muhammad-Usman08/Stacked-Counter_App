import 'package:flutter/material.dart';
import 'package:my_first_app/ui/views/about/about_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => AboutViewModel(),
        builder: (context, aboutModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('About Page'),
              backgroundColor: Colors.blue[400],
            ),
             body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(aboutModel.counter.toString(),
                      style: TextStyle(fontSize: 30)),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        aboutModel.addCounter();
                      },
                      child: Text('Add Counter')),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      }, child: Text('Back to Home View'))
                ],
              ),
            ),
          );
        });
  }
}
