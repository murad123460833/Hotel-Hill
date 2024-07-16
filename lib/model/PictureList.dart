
class picture{
  String title;
  String description;

  String imageurl;


  picture(
      {
        required this.title,
        required this.description,

        required this.imageurl,


      });
}



final List<picture> pictureList=[
  picture(
    title:"hottel view",
    description:"1956 - France. A priest is murdered. An evil is spreading. The sequel"
        " to the worldwide smash hit follows Sister "
        "Irene as she once again comes face-to-face with Valak, the demon nun.",

    imageurl:"assets/carojel_1.jpg",


  ),

  picture(
    title:"room view",
    description:"In a crime-infested town, Kannan bhai and his gang are the reigning powers."
        " To combat this reign and seek revenge, Inspector Shahul"
        " tactfully plots the return of the ''King'', leading to a transformative turn of events.",

    imageurl:"assets/couple_room.jpg",

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


