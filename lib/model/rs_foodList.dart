
class rs_food{
  String? title;
  int price;

  String? imageurl;


  rs_food(
      {
        required this.title,
        required this.price,

        required this.imageurl,


      });
}



final List<rs_food> rs_foodList=[
  rs_food(
    title:"paratha",
    price:210,

    imageurl:"assets/f1.jpg",


  ),

  rs_food(

    title: "Coffee",
    price:260,

    imageurl:"assets/f2.jpg",

  ),

  rs_food(
    title:"Pasta",
    price:180,

    imageurl: "assets/f3.jpg",

  ),

  rs_food(
    title:"Burger",
    price:520,

    imageurl:"assets/f4.jpg",

  ),


  rs_food(
    title:"Beriyani",
    price:350,

    imageurl:"assets/f5.jpg",

  ),
  rs_food(
    title:"Ice Cream",
    price:67,

    imageurl:"assets/f6.jpg",

  ),

  rs_food(
    title:"Cake",
    price:1290,

    imageurl:"assets/f7.jpg",

  ),
  rs_food(
    title:"Pizza",
    price:630,

    imageurl:"assets/f8.jpg",

  ),
  rs_food(
    title:"Tea",
    price:640,

    imageurl:"assets/f9.jpg",

  ),
  rs_food(
    title:"Coke",
    price:60,

    imageurl:"assets/f10.jpg",

  ),

  rs_food(
    title:"juice",
    price:760,

    imageurl:"assets/f11.jpg",

  ),



];
// final List<movies> englishList=[
//   movies(
//     title:"The Nun II",
//     description:"1956 - France. A priest is murdered. An evil is spreading. The sequel"
//         " to the worldwide smash hit follows Sister "
//         "Irene as she once again comes face-to-face with Valak, the demon nun.",
//     year: 2023,
//     imageurl:"image/download.jpg",
//     link: ("http://172.27.27.84/movie/25791"),
//
//   ),
//
//
//
//
//
//
//
//
//
//
//   movies(
//     title:"Avatar The Way of Water",
//     description:"Jake Sully lives with his newfound family formed on the planet of Pandora."
//         " Once a familiar threat returns to finish what was previously started, "
//         "Jake must work with Neytiri and the army of the Na''vi race to protect their plane",
//     year: 2022,
//     imageurl:"image/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_FMjpg_UX1000_.jpg",
//     link:"http://172.27.27.84/movie/25713",
//   ),
//
//   movies(
//     title:"Avatar The Way of Water",
//     description:"Jake Sully lives with his newfound family formed on the planet of Pandora."
//         " Once a familiar threat returns to finish what was previously started, "
//         "Jake must work with Neytiri and the army of the Na''vi race to protect their plane",
//     year: 2022,
//     imageurl:"image/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_FMjpg_UX1000_.jpg",
//     link:"http://172.27.27.84/movie/25713",
//   ),
//
//   movies(
//     title:"Avatar The Way of Water",
//     description:"Jake Sully lives with his newfound family formed on the planet of Pandora."
//         " Once a familiar threat returns to finish what was previously started, "
//         "Jake must work with Neytiri and the army of the Na''vi race to protect their plane",
//     year: 2022,
//     imageurl:"image/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_FMjpg_UX1000_.jpg",
//     link:"http://172.27.27.84/movie/25713",
//   ),
//
//
//   movies(
//     title:"Avatar The Way of Water",
//     description:"Jake Sully lives with his newfound family formed on the planet of Pandora."
//         " Once a familiar threat returns to finish what was previously started, "
//         "Jake must work with Neytiri and the army of the Na''vi race to protect their plane",
//     year: 2022,
//     imageurl:"image/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_FMjpg_UX1000_.jpg",
//     link:"http://172.27.27.84/movie/25713",
//   ),
//
//
//   movies(
//     title:"Avatar The Way of Water",
//     description:"Jake Sully lives with his newfound family formed on the planet of Pandora."
//         " Once a familiar threat returns to finish what was previously started, "
//         "Jake must work with Neytiri and the army of the Na''vi race to protect their plane",
//     year: 2022,
//     imageurl:"image/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_FMjpg_UX1000_.jpg",
//     link:"http://172.27.27.84/movie/25713",
//   ),
//
//
//   movies(
//     title:"Avatar The Way of Water",
//     description:"Jake Sully lives with his newfound family formed on the planet of Pandora."
//         " Once a familiar threat returns to finish what was previously started, "
//         "Jake must work with Neytiri and the army of the Na''vi race to protect their plane",
//     year: 2022,
//     imageurl:"image/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_FMjpg_UX1000_.jpg",
//     link:"http://172.27.27.84/movie/25713",
//   ),
//
//   movies(
//     title:"Avatar The Way of Water",
//     description:"Jake Sully lives with his newfound family formed on the planet of Pandora."
//         " Once a familiar threat returns to finish what was previously started, "
//         "Jake must work with Neytiri and the army of the Na''vi race to protect their plane",
//     year: 2022,
//     imageurl:"image/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_FMjpg_UX1000_.jpg",
//     link:"http://172.27.27.84/movie/25713",
//   ),
//
//   movies(
//     title:"Avatar The Way of Water",
//     description:"Jake Sully lives with his newfound family formed on the planet of Pandora."
//         " Once a familiar threat returns to finish what was previously started, "
//         "Jake must work with Neytiri and the army of the Na''vi race to protect their plane",
//     year: 2022,
//     imageurl:"image/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_FMjpg_UX1000_.jpg",
//     link:"http://172.27.27.84/movie/25713",
//   ),
//
//   movies(
//     title:"Avatar The Way of Water",
//     description:"Jake Sully lives with his newfound family formed on the planet of Pandora."
//         " Once a familiar threat returns to finish what was previously started, "
//         "Jake must work with Neytiri and the army of the Na''vi race to protect their plane",
//     year: 2022,
//     imageurl:"image/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_FMjpg_UX1000_.jpg",
//     link:"http://172.27.27.84/movie/25713",
//   ),
//
// ];


