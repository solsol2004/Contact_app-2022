import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:MyApp()
    )
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name=['예쏠', '뭉치', '빠빠'];
  var like=[0,2,3];
  var valueText= 'hi';

  @override
  Widget build(BuildContext context)=> Scaffold(
        floatingActionButton: FloatingActionButton(
          child:Text('+'), 
          onPressed: (){
            showDialog(context: context, builder: (context){
              return DesignUI();
              },
            );
          },
        ),
        appBar: AppBar(title: Text('contact')),
        body: ListView.builder(
          itemCount:3,
          itemBuilder: (c,i){
            return  ListTile(
              leading: Icon(Icons.person_pin), 
              title: Text(name[i]),
             );
            }
          ),
        bottomNavigationBar: BottomBar(),
    );
}

class DesignUI extends StatelessWidget {
  const DesignUI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 200,
        child: Column(
          children: [
            TextField(),
            TextButton(
              onPressed: (){},
              child: Text('완료')),
            TextButton(
              onPressed: (){Navigator.pop(context);},
              child: Text('취소'))
          ],
        ),
      ),
    );
  }
}


class BottomBar extends StatelessWidget {
  const BottomBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar( 
      child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ],
            ),
          ),
    );
  }
}