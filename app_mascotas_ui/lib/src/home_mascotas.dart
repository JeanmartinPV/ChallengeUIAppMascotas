import 'package:app_mascotas_ui/src/data.dart';
import 'package:app_mascotas_ui/src/details_page.dart';
import 'package:flutter/material.dart';

class HomeMascota extends StatefulWidget {
  HomeMascota({Key key}) : super(key: key);

  @override
  _HomeMascotaState createState() => _HomeMascotaState();
}

class _HomeMascotaState extends State<HomeMascota> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            height: 80.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.black12,
                    ),
                    onPressed: () {}),
                Column(
                  children: [
                    Text(
                      'Locatión',
                      style: TextStyle(fontSize: 15, color: Color(0xffE0E0E0)),
                    ),
                    Text('Chincha I. Perú', style: TextStyle( fontSize: 20, fontWeight: FontWeight.w700),),
                  ],
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      AssetImage('assets/images/Mascota/person.png'),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0)),
                  color: Color(0xffE0E0E0),
                ),

                child: Column(
                  children: [
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.only(top : 25, left: 15),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 0; i < listaCategoria.length; i++)...[
                              if (i == 0) 
                                 Container(
                                   margin: EdgeInsets.only(right: 8.0),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(15.0),
                                     color: Colors.white,

                                   ),
                                   height: 50,
                                   width: 50,
                                   child: Icon(Icons.filter_list_alt, color: Color(0xffE0E0E0),),
                                 )
                              ,

                            Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: i == 0 ?Color(0xffFF6052) : Colors.white,
                              ),
                              height: 50,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Image( image: AssetImage(listaCategoria[i].imagen), color: i == 0 ?Colors.white : Colors.black,),
                                  SizedBox(width: 10,),
                                  Text('${listaCategoria[i].nombre}',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color: i == 0 ?Colors.white : Colors.black),)
                                ],
                              ),
                            ),
                          )
                          ]            
                        ],
                      ),
                    )
                    ,Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.all(20),
                        physics: BouncingScrollPhysics(),
                        itemCount: listaAnimales.length,
                        itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>  DetailsPage(animales: listaAnimales[index],)));
                          },
                                                  child: Container(
                            margin: EdgeInsets.only(bottom: 15.0),
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white
                            ),
                            height: 160,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                    child: Hero(
                                      tag: '${listaAnimales[index].nombre}',
                                      child: Container(
                                        key: UniqueKey(),
                                        height: double.infinity,
                                        margin: EdgeInsets.only(right: 5.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: listaAnimales[index].color,
                                        ),
                                      child: Image(image: AssetImage(listaAnimales[index].image),),
                                        ),
                                    ),
                                ), 
                                Expanded(
                                  flex: 5,
                                                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('${listaAnimales[index].nombre}',style: TextStyle(fontWeight: FontWeight.w800, fontSize: 28.0)),
                                      Text('${listaAnimales[index].raza}',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0)),
                                      Text('${listaAnimales[index].edad}',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0, color: Colors.grey[500])),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on, color: Colors.red,),
                                          Text('${listaAnimales[index].distancia}')
                                        ],
                                      )

                                    ],
                                  ),
                                )
                                ,Expanded(
                                  flex: 1,
                                  child: Column(
                                  children: [
                                    index == 0 ? Icon(Icons.favorite_sharp, color: Colors.red,) : Icon(Icons.favorite_outline_sharp, color: Colors.grey,)
                                  ],
                                ))
                              ],
                            )),
                        );
                       },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
