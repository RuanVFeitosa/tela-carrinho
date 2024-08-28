import 'package:atv01/models/compras_model.dart';
import 'package:flutter/material.dart';

class Pepper extends StatelessWidget {
  final ComprasModel compra;

  const Pepper({super.key, required this.compra});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.2),
          top: BorderSide(width: 0.2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset(compra.imagem, width: 100),
              Container(),
            ],
          ),
          Column(
            children: [
              Text(compra.titulo),
              Text('${compra.medida} '), // Preço | Medida
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {}, // You need to define a function for onPressed
                    icon: const Icon(Icons.remove),
                  ),
                  Text('${compra.quantidade}'),
                  IconButton(
                    onPressed: () {}, // You need to define a function for onPressed
                    icon: const Icon(Icons.add_box_rounded, color: Colors.green),
                  ),
                ],
              ),
            ],
          ),
           Column(
            children: [
              const Icon(Icons.close),
              Text('\$ ${compra.preco}'), // You may want to replace this with compra.preco
            ],
          ),
        ],
      ),
    );
  }
}