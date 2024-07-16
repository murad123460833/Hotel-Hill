class room{
  String? title;
  int price;

  String? imageurl;


  room(
      {
        required this.title,
        required this.price,
        required this.imageurl,


      });
}



final List<room> roomList=[
  room(
    title:"Room No 101",
    price:210,

    imageurl:"assets/watter.jpg",


  ),

  room(

    title: "Room No 102",
    price:260,

    imageurl:"assets/special_juce.jpg",

  ),

  room(
    title:"Room No 103",
    price:180,

    imageurl: "assets/wine.jpg",

  ),




  room(
    title:"Room No 104",
    price:67,

    imageurl:"assets/f6.jpg",

  ),


  room(
    title:"Room No 105",
    price:630,

    imageurl:"assets/bear.jpg",

  ),
  room(
    title:"Room No 106",
    price:640,

    imageurl:"assets/f9.jpg",

  ),
  room(
    title:"Room No 107",
    price:60,

    imageurl:"assets/f10.jpg",

  ),

  room(
    title:"Room No 108",
    price:760,

    imageurl:"assets/f11.jpg",

  ),
];