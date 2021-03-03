import 'dart:ui';

class CategoriaAnimales {

  final String nombre;
  final String imagen;

  CategoriaAnimales(this.nombre, this.imagen);
}

class Animales {

  final String nombre;
  final String raza;
  final String edad;
  final String distancia;
  final String image;
  final  Color color;

  Animales(this.nombre, this.raza, this.edad, this.distancia, this.image, this.color);
}

final listaAnimales = <Animales>[
  Animales( 'Sparky', 'Golden Retriver', 'Female, 8 months old', '2.5 kms away','assets/images/Mascota/dogtest.png', Color(0xffFFE56C)),
  Animales( 'Charlie', 'Boston Terrier', 'Male, 1.5 years old', '2.6 kms away','assets/images/Mascota/boston.png', Color(0xff89D3D2)),
  Animales( 'Max', 'Siberian Husky', 'Male, 1 years old', '2.9 kms away','assets/images/Mascota/husky.png', Color(0xff7FC6E4)),
  Animales( 'Daysi', 'Maltese', 'Female, 7 months old', '3.1 kms away','assets/images/Mascota/maltese.png', Color(0xffFFAA79)),
  Animales( 'Zoe', 'Jack Russel Terrier', 'Male, 7 year old', '5.5 kms away','assets/images/Mascota/rusell.png', Color(0xffB9D89E)),
];

final listaCategoria = <CategoriaAnimales>[
  CategoriaAnimales('Dogs', 'assets/images/Mascota/dog.png'),
  CategoriaAnimales('Birds', 'assets/images/Mascota/bird.png'),
  CategoriaAnimales('Butterfly', 'assets/images/Mascota/butterfly.png'),
  CategoriaAnimales('Fish', 'assets/images/Mascota/fish.png'),
  CategoriaAnimales('Monkey', 'assets/images/Mascota/monkey.png'),

];