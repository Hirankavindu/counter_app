import 'package:counter_app/pages/first_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Head Count',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            Text('$count',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  count++;
                });

              },
              child: Text('Count',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),

            ElevatedButton(
              onPressed: (){
                setState(() {
                  count = 0;
                });
              },
              child: Text('Reset',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),

            SizedBox(
              height: 50,
            ),
            
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_){
                    return FirstPage();

                  }
              ),
              );
            }, child: Text('Click to go to first page',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))

          ],
        ),
      ),
    );
  }
}
