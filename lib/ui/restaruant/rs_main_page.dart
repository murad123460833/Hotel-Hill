import 'package:flutter/material.dart';
import 'package:hill_site_inn/model/rs_foodList.dart';
import 'package:hill_site_inn/provider/provider1.dart';
import 'package:hill_site_inn/ui/restaruant/rs_2nd_page.dart';
import 'package:provider/provider.dart';

class rs_main_page extends StatefulWidget {
  const rs_main_page({Key? key}) : super(key: key);

  @override
  State<rs_main_page> createState() => _rs_main_pageState();
}

class _rs_main_pageState extends State<rs_main_page> {
  @override
  Widget build(BuildContext context) {
    Provider1st pro = Provider1st();
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black26,
        title: Text("Order your Food ",style: TextStyle(color: Colors.white),),


        actions: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>rs_2nd()));
            },
            child: Icon(Icons.shopping_cart,color: Colors.white,),

          ),
          SizedBox(width: 30,)
        ],
      ),

      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                shrinkWrap: true,
                itemCount: rs_foodList.length,
                itemBuilder:(context,index) {
                  rs_food food=rs_foodList[index];
                  return Consumer<Provider1st>(
                    builder: (context, value, child){
                      return InkWell(
                        onTap: (){

                          value.toal(index);
            if(value.vl.contains(index)){
            // context.read<FavariteProvider>().remove(index);
            value.rm(index);

            }else{
        // context.read<FavariteProvider>().addItem(index);
        value.ad(index);


            print(index);
}
},
                        child: Container(

                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),

                          color: Colors.white12,
                          child: Column(
                            children: [
                              Image.asset(food.imageurl??"",height: 100,width: 150,),

                               Row(
                                 children: [
                                   Column(
                                     children: [
                                       Text(food.title??"",style: TextStyle(color: Colors.white),),

                                       Text("Price ${food.price}",style: TextStyle(color:Colors.white70)),
                                     ],
                                   ),
                                      Spacer(),
                                   IconButton(


                                     onPressed: (){},
                                     icon: value.vl.contains(index)? Icon(Icons.shopping_cart,
                                       color: Colors.green,):Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                                   ),
                                 ],
                               ),

                            ],
                          ),
                        ),
                      );

                    },
                  );
                },

              )
          ),


        ],
      ),
    );
  }
}




