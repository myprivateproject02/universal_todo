import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universal_todo/provider/login_provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginViewModel>(
        create: (context) => LoginViewModel(),
        child: Consumer<LoginViewModel>(builder: (context, provider, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Login"),
            ),
            body: Center(
              child: Text(
                "Totla Count is ${provider.count}",
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  child: Text("+"),
                  onPressed: () {
                    provider.incrementCount();
                  },
                ),
                SizedBox(
                  width: 8,
                ),
                FloatingActionButton(
                  child: Text("-"),
                  onPressed: () {
                    provider.decrementCount();
                  },
                ),
              ],
            ),
          );
        }));
  }
}
