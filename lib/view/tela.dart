import 'package:atv01/models/compras_model.dart';
import 'package:atv01/widgets/button.dart';
import 'package:atv01/widgets/eggs.dart';
import 'package:atv01/widgets/fruits.dart';
import 'package:atv01/widgets/ginger.dart';
import 'package:atv01/widgets/pepper.dart';
import 'package:flutter/material.dart';

class tela extends StatelessWidget {
  const tela({super.key});

  @override
  Widget build(BuildContext context) {
    ComprasModel minhaCompra = ComprasModel(
      imagem: 'assets/images/tomatoes.png',
      titulo: 'Bell Pepper Red',
      medida: '1kg, price',
      quantidade: 2,
      preco: 4.99,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Pepper(compra: minhaCompra),
          eggs(),
          fruits(),
          ginger(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Ir para o carrinho",
                    style: TextStyle(
                     fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      "\$12.96",
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.black.withOpacity(0.2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}