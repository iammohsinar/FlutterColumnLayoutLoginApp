import 'package:flutter/material.dart';


void main() => runApp(new ColumnLayoutLoginApp());

class ColumnLayoutLoginApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Column layout app",
      theme: ThemeData(
        primaryColor: const Color(0xff2980b9), // AARRGGBB 
      ),
      home: new LoginAppStateful(),
    );
  }
}

class LoginAppStateful extends StatefulWidget {
LoginApp createState() => LoginApp();
}

class LoginApp extends State<LoginAppStateful> {

  Widget build(BuildContext cx) {
    return new Scaffold(
        appBar: null,
        body: new Container(
          padding: EdgeInsets.all(10.0),
          color: const Color(0xffe0eff9),
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: <Widget>[
              new Center(
                child: Image(
                  image: AssetImage("images/flutterlogo.png"),
                  width: 264.50,
                  height: 213.50,
                )
              ),
              SizedBox(height: 100.0,),
              TextField(
                decoration: InputDecoration( 
                  labelText: "User name",
                  labelStyle: TextStyle(
                    color: const Color(0xff2980b9)
                  ),               
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: const Color(0xff2980b9),
                      width: 3.0                      
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: const Color(0xff2980b9),
                      width: 3.0
                    )
                  )
                ),
              ),
              SizedBox(height: 15.0,),
              TextField(
                obscureText: true,
                decoration: InputDecoration( 
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: const Color(0xff2980b9),                    
                  ),                               
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: const Color(0xff2980b9),
                      width: 3.0                      
                    )
                  ), 
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: const Color(0xff2980b9),
                      width: 3.0
                    )
                  )
                ),
              ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Expanded(
                  child: new RaisedButton(
              onPressed: () {},
              color: const Color(0xff2980b9),
              child: Text("Login", style: TextStyle(
                fontSize: 25.0,
                color: const Color(0xffe0eff9)
              ),),
              padding: EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),              
            )
            ,
                )
              ],
            )
            
            ],
          ),
        ),
    );
  }
}