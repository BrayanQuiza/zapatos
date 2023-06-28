import 'package:diseno/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemsDetailScreen extends StatefulWidget {
  const ItemsDetailScreen({super.key});

  @override
  State<ItemsDetailScreen> createState() => _ItemsDetailScreenState();
}

class _ItemsDetailScreenState extends State<ItemsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 25,
        ),
        title: Text(
          "Shoping",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 17),
            child: FaIcon(
              FontAwesomeIcons.heart,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                child: Image.asset("assets/images/item.png"),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Nike Men\'s Shoes",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nike Airs Huarche",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "\$120",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Size",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    _makeSizeButton("US7", true),
                    SizedBox(width: 8),
                    _makeSizeButton("US7.5", true),
                    SizedBox(width: 8),
                    _makeSizeButton("US8", false),
                    SizedBox(width: 8),
                    _makeSizeButton("US8.5", true),
                    SizedBox(width: 8),
                    _makeSizeButton("US9", false),
                    SizedBox(width: 8),
                    _makeSizeButton("US9.5", true),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Es posible que existan opciones más rápidas",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Descripcion",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    // color: Colors.grey,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas, las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartScreen(),
            ),
          );
        },
        backgroundColor: Colors.black,
        child: Icon(CupertinoIcons.cart),
      ),
    );
  }

  Widget _makeSizeButton(String size, bool available) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: available
            ? Border.all(color: Colors.grey, width: 0.3)
            : Border.all(color: Colors.transparent, width: 0),
        color: available ? Colors.white : Colors.grey[300],
      ),
      child: Text(
        size,
        style: available
            ? TextStyle(
                fontSize: 15.5,
                fontWeight: FontWeight.w500,
                color: Colors.black)
            : TextStyle(
                fontSize: 15.5,
                fontWeight: FontWeight.w500,
                color: Colors.grey[50]),
      ),
    );
  }
}
