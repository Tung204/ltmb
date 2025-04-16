import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar - thanh ung dung o tren cung
      appBar: AppBar(
        //tieu de cua appbar
        title: const Text('My Demo'),
        backgroundColor: Colors.amber,
        //do bong
        elevation: 100,
        //ds cac nut hanh dong ben phai appbar
        actions: [
          //Nut tim kiem
          IconButton(
            onPressed: () {
              print('Search');
            },
            icon: const Icon(Icons.search),
          ),
          //Nut ...
          IconButton(
            onPressed: () {
              print('...');
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(child: Text("Noi dung chinh")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Ok");
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chu"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tim kiem"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "ca nhan"),
        ],
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar - thanh ung dung o tren cung
      appBar: AppBar(
        //tieu de cua appbar
        title: const Text('My Demo'),
        backgroundColor: Colors.amber,
        //do bong
        elevation: 100,
        //ds cac nut hanh dong ben phai appbar
        actions: [
          //Nut tim kiem
          IconButton(
            onPressed: () {
              print('Search');
            },
            icon: const Icon(Icons.search),
          ),
          //Nut ...
          IconButton(
            onPressed: () {
              print('...');
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Van ban thong tuhong"),
            const SizedBox(height: 20),

            Text(
              "Van ban co dinh dang",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              "Van ban co dinh dang",
              style: TextStyle(color: Colors.green),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Ok");
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chu"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tim kiem"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "ca nhan"),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar - thanh ung dung o tren cung
      appBar: AppBar(
        //tieu de cua appbar
        title: const Text('My Demo'),
        backgroundColor: Colors.amber,
        //do bong
        elevation: 100,
        //ds cac nut hanh dong ben phai appbar
        actions: [
          //Nut tim kiem
          IconButton(
            onPressed: () {
              print('Search');
            },
            icon: const Icon(Icons.search),
          ),
          //Nut ...
          IconButton(
            onPressed: () {
              print('...');
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Align(
            alignment: Alignment.center,
            child: const Text(
              "Container vs BoxDecoration",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Ok");
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chu"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tim kiem"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "ca nhan"),
        ],
      ),
    );
  }
}

class MyColumnAndRow extends StatelessWidget {
  const MyColumnAndRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar - thanh ung dung o tren cung
      appBar: AppBar(
        //tieu de cua appbar
        title: const Text('My Demo'),
        backgroundColor: Colors.amber,
        //do bong
        elevation: 100,
        //ds cac nut hanh dong ben phai appbar
        actions: [
          //Nut tim kiem
          IconButton(
            onPressed: () {
              print('Search');
            },
            icon: const Icon(Icons.search),
          ),
          //Nut ...
          IconButton(
            onPressed: () {
              print('...');
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Container(width: 50, height: 50, color: Colors.red),
            Container(width: 50, height: 50, color: Colors.green),
            Container(width: 50, height: 50, color: Colors.blue),
          ]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Ok");
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chu"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tim kiem"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "ca nhan"),
        ],
      ),
    );
  }
}
