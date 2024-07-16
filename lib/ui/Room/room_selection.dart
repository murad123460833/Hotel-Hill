import 'package:flutter/material.dart';
import 'package:hill_site_inn/ui/Room/room_confirm.dart';
import 'package:provider/provider.dart';

import '../../model/roomList.dart';
import '../../provider/provider_for_room.dart';

class RoomSelection extends StatefulWidget {

  const RoomSelection({Key? key,}) : super(key: key);

  @override
  State<RoomSelection> createState() => _RoomSelectionState();
}

class _RoomSelectionState extends State<RoomSelection> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Your Room Now"),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>RoomConfirm()));
            },child: Icon(Icons.book),
          )
        ],
      ),

      body: Column(
        children: [
         Expanded(
             child:ListView.builder(
               itemCount: roomList.length,
                 itemBuilder: (context,index){
                return Consumer<Provider_for_room>(

                    builder: (context,value,child){
                      room rom=roomList[index];
                      return ListTile(
                        onTap: (){
                          if(value.selectedIteam.contains(index)){
                            value.rm(index);
                          }else{
                            value.ad(index);
                          }
                        },
                        title: Text(rom.title.toString()),
                        trailing: IconButton(
                            onPressed: (){},
                            icon: value.selectedIteam.contains(index)? Icon(Icons.circle,color: Colors.blue,):Icon(Icons.circle_outlined)
                        ),
                      );
                    }
                );
                 }
             ),

         ),
        ],
      ),
    ) ;
  }
}
