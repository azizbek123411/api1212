import 'package:api1212/service/base_client.dart';
import 'package:api1212/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FlutterLogo(
                size: 72,
              ),
              AppButton(
                  title: 'Get',
                  description: 'fetch Users',
                  color: Colors.lightGreen,
                  onTap: () async {
                    var response =
                        await BaseClinet().get('/users').catchError((error) {
                      print(error);
                    });
                    if(response==null) return;
                    print('succesful');
                  }),
              AppButton(
                  title: 'Post',
                  description: 'Add Users',
                  color: Colors.blueAccent,
                  onTap: () {}),
              AppButton(
                  title: 'Put',
                  description: 'Edit Users',
                  color: Colors.orangeAccent,
                  onTap: () {}),
              AppButton(
                  title: 'Del',
                  description: 'Delete Users',
                  color: Colors.lightGreen,
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
