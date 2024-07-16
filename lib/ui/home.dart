import 'package:flutter/material.dart';
import 'package:hill_site_inn/model/PictureList.dart';
import 'package:hill_site_inn/model/PictureList.dart';
import 'package:hill_site_inn/ui/Bar/bar_main.dart';
import 'package:hill_site_inn/ui/accounts.dart';
import 'package:hill_site_inn/ui/restaruant/rs_main_page.dart';
import 'package:hill_site_inn/ui/sinup_login.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../model/PictureList.dart';
import 'Room/room_selection.dart';

class home extends StatefulWidget {

  home({Key? key,}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  GlobalKey<ScaffoldState> _Scafoldkey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {


     Size size =MediaQuery.of(context).size;

    return  Scaffold(
      key: _Scafoldkey,
      drawer: Drawer(
          backgroundColor:Colors.blueGrey.shade700,
        child: ListView(

          children: [
           UserAccountsDrawerHeader(
             decoration: BoxDecoration(
               color: Colors.blueGrey.shade700,
             ),
                accountName:const Text("Motasim"),
               accountEmail: const Text("motasim123@gmail.com",style: TextStyle(color: Colors.white70),),
             currentAccountPicture:  CircleAvatar(

               foregroundImage: AssetImage("assets/profile.jpg"),

             ),


           ),
            Container(

              height: 50,

              margin: EdgeInsets.only(left: 20,right: 10),

              child: InkWell(

                onTap: ()async{
                SharedPreferences sp=await SharedPreferences.getInstance();
              sp.clear();
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>login()));
},
                child: Container(
                child:  Row(
                    children: [
                      Text("Log Out",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                      fontSize: 20),),
                      Spacer(),
                      Icon(Icons.logout_outlined,color: Colors.white,),
                    ],
                  )
                ) ,
              ),
            ),
            Divider(thickness: 2,),
            ListTile(
                leading: Icon(Icons.settings,color: Colors.white,),
                title:Text("Settings",style: TextStyle(color: Colors.white70),),

            ),
            ListTile(
                leading: Icon(Icons.dark_mode_outlined,color: Colors.white,),
                title:Text("Theame",style: TextStyle(color: Colors.white70),)),
            ListTile(
                leading: Icon(Icons.privacy_tip_outlined,color: Colors.white,),
                title:Text("Privecy",style: TextStyle(color: Colors.white70),)),
            ListTile(
                leading: Icon(Icons.help_outline_outlined,color: Colors.white,),
                title:Text("Help & Support",style: TextStyle(color: Colors.white70),)),
            Divider(thickness: 2,),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text("Ratings and rewiews ",style: TextStyle(color: Colors.white,fontSize: 25,
                      fontWeight: FontWeight.bold)),
                  Text("Ratings and reviews are verified and are from people who use the same type of "
                      "device that you use !",style: TextStyle(color: Colors.white70)),
                  Divider(),
                  SizedBox(height: 20,),
                  Container(
                    child: Row(
                      children: [
                        Container(

                          child: Column(
                            children: [
                              Text("4.1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25)),
                              Row(
                                children: [   Icon(Icons.star,color: Colors.amber,),
                                  Icon(Icons.star,color: Colors.amber),
                                  Icon(Icons.star,color: Colors.amber),
                                  Icon(Icons.star_half_outlined,color: Colors.amber),
                                  Icon(Icons.star_border,color: Colors.amber),],
                              ),
                              Text("1,291,775",style: TextStyle(color: Colors.white70)),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(


                          child: Column(

                            children: [
                              Row(
                                children: [
                                  Text("5 ",style: TextStyle(color: Colors.white)),
                                  Container(
                                    width: 100,
                                    child: LinearProgressIndicator(
                                      value: 0.9,

                                      valueColor: AlwaysStoppedAnimation(Colors.amber),
                                      backgroundColor: Colors.white,
                                      minHeight: 11,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("4 ",style: TextStyle(color: Colors.white)),
                                  Container(
                                    width: 100,
                                    child: LinearProgressIndicator(
                                      value: 0.7,

                                      valueColor: AlwaysStoppedAnimation(Colors.amber),
                                      backgroundColor: Colors.white,
                                      minHeight: 11,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("3 ",style: TextStyle(color: Colors.white)),
                                  Container(
                                    width: 100,
                                    child: LinearProgressIndicator(
                                      value: 0.5,

                                      valueColor: AlwaysStoppedAnimation(Colors.amber),
                                      backgroundColor: Colors.white,
                                      minHeight: 11,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("2 ",style: TextStyle(color: Colors.white)),
                                  Container(
                                    width: 100,
                                    child: LinearProgressIndicator(
                                      value: 0.4,

                                      valueColor: AlwaysStoppedAnimation(Colors.amber),
                                      backgroundColor: Colors.white,
                                      minHeight: 11,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("1 ",style: TextStyle(color: Colors.white),),
                                  Container(
                                    width: 100,
                                    child: LinearProgressIndicator(
                                      value: 0.1,

                                      valueColor: AlwaysStoppedAnimation(Colors.amber),
                                      backgroundColor: Colors.white,
                                      minHeight: 11,
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white10,
      body:Column(
        children: [
          Stack(

            children: [
              Container(
                height: 240,
                width: size.width,
                padding: EdgeInsets.only(top: 40,right: 30,left: 30,bottom: 10),

                // padding: EdgeInsets.symmetric(vertical: 40,horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30),bottomRight: Radius.circular(30)),
                  image: DecorationImage(image: AssetImage("assets/p1.jpg")),
                ),
                child:Container(
                  child: Column(

                    children: [
                      Row(

                        children: [

                          InkWell(
                            onTap: (){
                              _Scafoldkey.currentState?.openDrawer();
                            },
                            child: Container(

                              child: Row(
                                children: [
                                  Container(

                                    child: CircleAvatar(

                                      foregroundImage: AssetImage("assets/profile.jpg"),

                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(

                                    child: Text("Motasim",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Image.asset("assets/logo_for_login.png",height: 50,),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,

                            ),
                          ),

                        ],
                      ),
                      SizedBox(height:100),

                      Text("Welcome to Hill Side Inn",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,),),


                    ],
                  ),
                ),

              ),

            ],
          ),
          SizedBox(height: 7,),
          Text("Booking Section ",style: TextStyle(color: Colors.yellowAccent,fontSize: 25),),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            height: 85,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>RoomSelection()));
                  },
                  child: Container(
                    width: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.cyan.shade900,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,

                          blurRadius: 15.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow

                      ],
                    ),
                    child: Column(children: [
                      Icon(Icons.room_preferences_outlined,color: Colors.white,),

                      Text("Room",style: TextStyle(color: Colors.white70),),
                    ],),),
                ),

                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>bar_main_page()));
                  },
                  child: Container(
                    width: 100,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.cyan.shade900,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,

                          blurRadius: 15.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow

                      ],
                    ),
                    child: Column(children: [
                      Icon(Icons.wine_bar_outlined,color: Colors.white,),

                      Text("Bar",style: TextStyle(color: Colors.white70),),
                    ],),),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>rs_main_page()));
                  },
                  child: Container(
                    width: 100,
                    padding: EdgeInsets.only(top: 20,right: 10,left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.cyan.shade900,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,

                          blurRadius: 15.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow

                      ],
                    ),
                    child: Column(children: [
                      Icon(Icons.restaurant_menu_outlined,color: Colors.white,),

                      Text("Restaurant",style: TextStyle(color: Colors.white70),),
                    ],),),
                ),
              ],
            ),


          ),
          SizedBox(height: 20,),

          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: pictureList.length,
                  padding: EdgeInsets.all(25),

                itemBuilder: (context, index){
                  picture pic=pictureList[index];
                  return InkWell(
                    child: Container(
                      margin: EdgeInsets.only(right: 20,left: 20),
                      padding: EdgeInsets.all(2),

                      decoration: BoxDecoration(

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,

                            blurRadius: 20.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                        border: Border.all(width: 2,color: Colors.white70),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      width: size.width,
                      // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                      child:Column(
                        children: [
                          Image.asset(pic.imageurl,height: 300,),
                          Text(pic.title,style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    )
                  );
                }

            ),
          ),





        ],
      ),


    );
  }



}







// children: [
// IconButton(onPressed: ()async{
// SharedPreferences sp=await SharedPreferences.getInstance();
// sp.clear();
// Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>login()));
// }, icon: Icon(Icons.login_outlined)),
// ],








