import 'package:flutter/material.dart';

class FormBasicDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FromBasicDemoSate();
}

class _FromBasicDemoSate extends State<FormBasicDemo>{
  // su dung global key de truy cap form
  final _formkey = GlobalKey<FormState>();
  String? _name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form cơ bản"),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
              key: _formkey,
              child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Họ và tên",
                        hintText: "Nhập họ và tên của bạn",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onSaved: (value)
                      {
                        _name = value;
                      },
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        ElevatedButton(onPressed: (){
                          if(_formkey.currentState!.validate()){
                           _formkey.currentState!.save();
                           ScaffoldMessenger.of(context).showSnackBar(
                             SnackBar(content: Text("Xin chào $_name"))
                           );
                          }
                        }, child: Text("Submit")),
                        SizedBox(width: 20,),
                        ElevatedButton(onPressed: (){
                          _formkey.currentState!.reset();
                          setState(() {
                            _name = null;
                          });
                        }, child: Text("Reset")),
                      ],
                    )
                  ],
              )
          ),
      ),
    );
  }
}