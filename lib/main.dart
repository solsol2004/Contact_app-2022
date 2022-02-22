import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar(
          backgroundColor: Colors.white ,
          toolbarHeight: 50,
            title:Text('회천3동',
              style: TextStyle(
                color:Colors.black, fontSize: 17, fontWeight: FontWeight.w600)
              ),  
              actions: 
              [Icon(Icons.keyboard_arrow_down, color:Colors.black), Icon(Icons.search,color: Colors.black), Icon(Icons.menu, color: Colors.black), Icon(Icons.notifications_none, color: Colors.black)]
            ),
        body: Container( 
          width: double.infinity,
          height: 120,
          padding: EdgeInsets.fromLTRB(30, 12, 20, 12),
          decoration: BoxDecoration(color: Colors.white,  ),
          child: Row(
            children: [
              ClipRRect(
                 borderRadius: BorderRadius.circular(8.0),
                child:Image.asset('icon.jpg'), 
              ),
              Expanded( child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('귀문관 키트 판매합니다 선제 3만원', style: TextStyle(fontWeight: FontWeight.w400),),
                      Text('회천3동 끌올 2분전', style: TextStyle(color: Colors.grey, fontSize: 12),),
                      Text('222,000원', style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.favorite_border_rounded, size: 16, color: Colors.grey,), Text('4', style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ],
                ),
              ),
              )
            ],
          ),
        )      
      )
    );
  }
}