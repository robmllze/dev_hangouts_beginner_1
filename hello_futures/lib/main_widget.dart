import 'package:flutter/material.dart';

import 'models/init_model.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({
    super.key,
    required this.initFuture,
  });

  final Future<InitModel> initFuture;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
            future: initFuture,
            builder: (context, snapshot) {
              final hasData = snapshot.hasData;
              final data = snapshot.data;
              if (hasData) {
                return Text('THE APP HAS BEEN INITIALIZED: ${data?.payload}');
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
