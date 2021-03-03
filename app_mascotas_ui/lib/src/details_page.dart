import 'package:app_mascotas_ui/src/data.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Animales animales;

  const DetailsPage({Key key, this.animales}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
          children: [

          Container(
            height: size.height * 0.22,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(Icons.arrow_back_ios_outlined),
                onPressed: () {
                  Navigator.pop(context);
                }),
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.red.withOpacity(0.5)),
              child: Icon(
                Icons.favorite_outlined,
                color: Colors.red,
              ),
            )
          ],
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${animales.nombre}',
                style: TextStyle(
                    fontSize: 30.0, fontWeight: FontWeight.w700),
              ),
              Icon(Icons.call_made_outlined)
            ]),
        SizedBox(
          height: 5.0,
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${animales.raza}',
                style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              Text(
                '${animales.edad}',
                style: TextStyle(
                    fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
            ]),
      ],
            ),
          ),
          Container(
            height: size.height * 0.5,
            child: Row(
      children: [
        Expanded(
            flex: 4,
            child: Container(
              padding:
                  EdgeInsets.only(right: 20.0, left: 20.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var i = 0; i < 4; i++) ...[
                    if (i == 0)
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          Text(
                            animales.distancia,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    Expanded(
                      child: Container(
                        width: size.width * 0.20,
                        height: size.height * 0.15,
                        margin: EdgeInsets.only(top: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border:
                              Border.all(color: Colors.grey, width: 2.0),
                          color: Colors.white,
                        ),
                        child: Image(
                          image: AssetImage(
                              'assets/images/Mascota/pet${i + 1}.png'),
                        ),
                      ),
                    ),
                  ]
                ],
              ),
            )),
        Expanded(
          flex: 4,
          child: Container(
            key: UniqueKey(),
            child: Hero(
              tag: '${animales.nombre}',
              child: Stack(
                  fit: StackFit.expand,
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      right: -size.width * 0.20,
                      top: 10.0,
                      child: Container(
                        height: size.height * 0.4,
                        width: size.height * 0.4,
                        decoration: BoxDecoration(
                            color: animales.color,
                            shape: BoxShape.circle),
                      ),
                    ),
                    Positioned(
                      top: 20.0,
                      right: -size.width * 0.20,
                      child: Image(
                        height: size.height * 0.4,
                        width: size.height * 0.4,
                        image: AssetImage(animales.image),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ],
            ),
          ),

          Container(
              height: 290,
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 35.0,
                              color: Colors.black87),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          style: TextStyle(fontSize: 15.0, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffF85D50),
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                                          
                                        ),
                      padding: EdgeInsets.symmetric(vertical : 15.0, horizontal: 10),
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Icon(Icons.pets, color: Colors.white,),
                         Text('ADOPT', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),)],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        
        ]),
    );
  }
}
