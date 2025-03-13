import 'package:asahinote/interface.dart';
import 'package:flutter/material.dart';

///dev: Icon page
class Page3 extends StatelessWidget {
  Page3({super.key, ApiMstShip? input}) {
    ship = input ?? ApiMstShip();
  }
  ApiMstShip? ship;
  @override
  Widget build(BuildContext context) {
    // 接收傳遞過來的參數
    final ship = ModalRoute.of(context)?.settings.arguments as ApiMstShip?;

    return Dialog(
      backgroundColor: Colors.red,
      child: Container(
        padding: EdgeInsets.all(16.0),
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is a custom popup!', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}
 //     appBar: AppBar(title = Text('Second Page')),