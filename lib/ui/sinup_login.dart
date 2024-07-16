import 'package:flutter/material.dart';
import 'package:hill_site_inn/ui/home.dart';
import 'package:hill_site_inn/ui/singuppage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController tec1 = TextEditingController();
  TextEditingController tec2 = TextEditingController();
  TextEditingController tec3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(

        children: [

          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.redAccent,
                    Colors.blueGrey.shade400,
                    Colors.deepOrangeAccent,

                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,


                ),
              ),
              child: Container(

                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Container(

                      height: 280,

                      child: Image.asset("assets/logo_for_login.png"),

                    ),
                    Text("Login your account", style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold,
                        color: Colors.white),),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 22),
                      padding: EdgeInsets.all(8),
                      child: Column(

                        children: [

                          TextField(

                            controller: tec1,
                            decoration: InputDecoration(
                                filled: true,

                                fillColor: Colors.white,
                                hintText: "Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)),

                                  gapPadding: 20,
                                )
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            controller: tec2,
                            decoration: InputDecoration(
                                filled: true,

                                fillColor: Colors.white,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)),

                                  gapPadding: 20,
                                )
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            controller: tec3,
                            decoration: InputDecoration(
                                filled: true,

                                fillColor: Colors.white,
                                hintText: "password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)),

                                  gapPadding: 20,
                                )
                            ),
                          ),
                          SizedBox(height: 30,),

                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.teal),
                              ),

                              onPressed: () async {
                                String name = tec1.text;
                                String email = tec2.text;
                                String pass = tec3.text;
                                SharedPreferences sp = await SharedPreferences
                                    .getInstance();

                                sp.setBool("loginkey", true);
                                sp.setString("Uname", name);
                                sp.setString("Uemail", email);
                                sp.setString("Upass", pass);

                                if (name == "motasim" &&
                                    email == "motasim123@gmail.com" &&
                                    pass == "123") {
                                  Navigator.pushReplacement(
                                      context, MaterialPageRoute(
                                      builder: (_) => home()));
                                } else {
                                  var sn = SnackBar(content: Text(
                                      "Please give your right data"));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      sn);
                                }
                              }, child: Text(
                            "login", style: TextStyle(fontSize: 20,color: Colors.white),)),

                          Row(
                            children: [

                              Text("If you have not account,Please",style: TextStyle(color: Colors.white),),
                              TextButton(onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>singup()));

                              }, child: Text("sign up",style: TextStyle(color: Colors.cyanAccent),)),
                            ],
                          ),

                          Container(
                            height: 180,
                            width: double.infinity,

                            child: Image.asset("assets/footer.png"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }
}




