
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Product"),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[300]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  buildRow("Название", "", 0),
                  buildRow("Костюм", "1234", 4),
                  buildRow("Модель", "Тип", 44),
                  buildRow("Robbery Rierra", "Костюм", 4),
                  buildRow("Артикул Модели", "Артикул ткани", 44),
                  buildRow("2345436", "Vendor Code", 4),
                  Container(child: Text("Размеры"),margin: EdgeInsets.only(top:44),),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 6),
                    margin: EdgeInsets.only(top: 8),
                    child: Text("196/2*2"),decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xff9E9E9E)
                      
                    ) ,
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow(String name, String value, double marginTop) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Text(name),
          margin: EdgeInsets.only(top: marginTop),
        ),
        Container(
          child: Text(value),
          margin: EdgeInsets.only(top: marginTop),
        ),
      ],
    );
  }
}
