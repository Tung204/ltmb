import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

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

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                labelText: "Họ và tên",
                hintText: "Nhập vào họ tên của bạn",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "example@gmail.com",
                helperText: "Nhap email ca nhan",
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.clear),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                filled:true,
                fillColor: Colors.grey[200],
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            TextField(
              // onChanged: (value){
              //   print("Dang nhap: $value");
              // },
              onSubmitted: (value){
                print("Da hoan thanh nhap: $value");
              },
              onTap: (){
                print("TextField duoc nhan");
              },
              decoration: InputDecoration(
                labelText: "Address",
                hintText: "Nhap vao dia chi cua ban",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                prefixIcon: Icon(Icons.add_home),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: "So dien thoai",
                hintText: "Nhap vao so dien thoai",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                prefixIcon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.phone,
            ),

            SizedBox(height: 30),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Mat khau",
                hintText: "Nhap vao mat khau cua ban",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                prefixIcon: Icon(Icons.password),
                // suffixIcon: IconButton(
                //     onPressed: (){}, icon: Icon(_isPasswordVisible?Icons.visibility:Icons.visibility_off,)
                // )
              ),
            ),
           ]
        ),
      ),

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
