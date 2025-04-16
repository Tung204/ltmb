import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyGetstures extends StatelessWidget {
  const MyGetstures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App 02'),
        backgroundColor: Colors.green,
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () {
              print('b1');
            },
            icon: Icon(Icons.search),
          ),

          IconButton(
            onPressed: () {
              print('b2');
            },
            icon: Icon(Icons.info),
          ),

          IconButton(
            onPressed: () {
              print('b3');
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),

      body: Center(child: Column(children: [SizedBox(height: 50),
        GestureDetector(
          onTap: (){print("Widget duoc cham");},
          onDoubleTap: (){
            print("Widget duoc cham 2 lan");
          },
          onLongPress: (){
            print("Widget duoc nhan");
          },
          onPanUpdate: (details){
            print('Keo - di chuyen: ${details.delta}');
          },
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Center(
              child: Text("Cham vao toi!"),
            ),
          ),
        ),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('pressed');
        },
        child: const Icon(Icons.add_ic_call),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang Chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Tìm Kiếm'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Cá Nhân'),
        ],
      ),
    );
  }
}
