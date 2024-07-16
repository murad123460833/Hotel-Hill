import 'package:flutter/material.dart';
import 'package:hill_site_inn/model/rs_foodList.dart';
import 'package:hill_site_inn/provider/provider1.dart';
import 'package:provider/provider.dart';

class rs_2nd extends StatefulWidget {



  const rs_2nd({Key? key, }) : super(key: key);


  @override
  State<rs_2nd> createState() => _rs_2ndState();
}


class _rs_2ndState extends State<rs_2nd> {
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<Provider1st>(context);
    var n=pro.total[0];
    int c1Val = 0;

    return Scaffold(

      backgroundColor: Colors.black26,
      appBar: AppBar(
        automaticallyImplyLeading: false,

        backgroundColor: Colors.black26,
        title: Text("My Foood ",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: SafeArea(

        child: Column(
          children: [

            Expanded(
                child: ListView.builder(
                 scrollDirection: Axis.vertical,


                  itemCount: pro.vl.length,
                  itemBuilder:(context,index) {
                    rs_food food=rs_foodList[pro.vl[index]];
                    return Consumer<Provider1st>(builder: (context, value, child){
                      return Container(
                       
                  padding: EdgeInsets.all(6),
                        margin: EdgeInsets.all(5),
                        color: Colors.white12,
                        child: Column(
                          children: [
                            Image.asset(food.imageurl??""),
                            Row(
                              children: [
                                Text(food.title??"",style: TextStyle(color:Colors.white)) ,

                                  Spacer(),
                                Text("Price ${food.price}",style: TextStyle(color:Colors.white),),
                                Spacer(),
                                Container(
                                  child: Row(
                                    children: [
                                      Text("Quantity",style: TextStyle(color: Colors.white),),
                                      IconButton(
                                          onPressed: (){
                                            setState(() {

                                              pro.decriseCont(index,food.price);
                                            });
                                          }, icon: Icon(Icons.remove,color: Colors.white,)),
                                      Text(pro.my[index].toString(),style: TextStyle(color:Colors.white)),
                                      IconButton(
                                          onPressed: (){
                                            setState(() {
                                              setState(() {
                                                // pro.click();
                                                pro.inceiseCont(index,food.price);
                                              });
                                            });

                                          }, icon: Icon(Icons.add,color: Colors.white,)),
                                    ],
                                  ),
                                ),





                              ],
                            ),


                          ],
                        ),




                      );
                    },
                    );
                  },

                )
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal.shade800,
                    offset: Offset(4, 8),
                    blurRadius: 5.0,
                    spreadRadius: 0.1,

                  ),
                ],
                color:Colors.teal.shade900,
                borderRadius:BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Text("Totel Balance = ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

                  Text(pro.to.toString(),style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Spacer(),
                  IconButton(onPressed: (){}, icon:Icon (Icons.rocket_launch_outlined,color:Colors. white,)),
                ],
              ),
            ),
            SizedBox(height: 10,),

          ],
        ),

      ),
    );
  }
}
