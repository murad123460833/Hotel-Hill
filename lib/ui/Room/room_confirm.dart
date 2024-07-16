

import 'package:flutter/material.dart';
import 'package:hill_site_inn/model/roomList.dart';
import 'package:hill_site_inn/provider/provider_for_room.dart';
import 'package:provider/provider.dart';

class RoomConfirm extends StatefulWidget {
  const RoomConfirm({Key? key}) : super(key: key);

  @override
  State<RoomConfirm> createState() => _RoomConfirmState();
}

class _RoomConfirmState extends State<RoomConfirm> {
  @override
  Widget build(BuildContext context) {
    var roompro=Provider.of<Provider_for_room>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking list"),
      ),
      body: Column(
        children: [
          Expanded(
              child:ListView.builder(
                itemCount: roompro.selectedIteam.length,
                  itemBuilder: (context,index){
                return Consumer<Provider_for_room>(
                    builder: (context,value,child){
                      room rom=roomList[index];
                      return ListTile(
                        title: Text(rom.title.toString()),
                        trailing: IconButton(onPressed: (){
                          value.rm(value.selectedIteam[index]);
                          setState(() {
                            
                          });
                        }, icon: Icon(Icons.delete_rounded)),
                      );
                    }
                );
              })
          
          )
        ],
      ),
    );
  }
}
