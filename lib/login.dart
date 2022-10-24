import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:project_g4/regist.dart';

class login extends StatelessWidget {
  login({super.key});
  var usernameController = TextEditingController();
  var passController = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Column(
            children: [

              Text("Đang nhập hệ thống"),
              Image.asset("assets/images/dienluc.png"),
              Center(
                child: TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      label: Text("Tên đăng nhập"),
                      hintText: "Vui lòng nhập tên đăng nhập",
                      prefixIcon: Icon(Icons.person)),
                  validator: (str) {
                    if (str == null || str.isEmpty)
                      return "Tên đăng nhập không được để trống";
                    return null;
                  },
                ),
              ),
              Container(

                padding: EdgeInsets.only(top: 5),
                child: TextFormField(
                  controller: passController,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      label: Text("Mật khẩu"),
                      hintText: "Vui lòng nhập mật khẩu",
                      prefixIcon: Icon(Icons.key)),
                  validator: (str) {
                    if (str == null || str.isEmpty)
                      return "Mật khẩu không được để trống";
                    return null;
                  },
                ),
              ),
              Container(
                width: 100.0,
                padding: EdgeInsets.only(top: 5),
                child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        var userName = usernameController.text;

                        print("Xin chào: ${userName}");
                      } else {
                        print("Dữ liệu không chính xác");
                      }
                    },
                    child: Text("Đăng nhập")
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                width: 100.0,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => regist()),
                      );
                    },
                    child: Text("Đăng ký")
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}