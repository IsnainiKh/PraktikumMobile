import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Expanded(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Pratikum Mobile"),
          ),
          body: Center(
            child: Column(
              children: [
                // Image.network("https://logowik.com/content/uploads/images/flutter5786.jpg"),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FlutterLogo(
                    size: 100,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      hintText: 'email'
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: 'Password'
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 50),
                    maximumSize: const Size(300, 50),
                  ),
                  onPressed: (){}, // Respon ketika button ditekan
                  child: Text("Login"),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: (){}, // Respon ketika button ditekan
                  child: Text("Forgot password?"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
