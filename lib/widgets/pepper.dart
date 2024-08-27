import 'package:flutter/material.dart';

class pepper extends StatelessWidget {
  const pepper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 0.2),
        top: BorderSide(width: 0.2))),
    
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset("assets/images/tomatoes.png", width: 100),
              Container(
              ),
            ],
          ),
          Column(
            children: [
              const Text('Bell Pepper Red'),
              const Text('1kg, Price'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               IconButton(
                    onPressed: () {}, // Você precisa definir uma função para o onPressed
                    icon: const Icon(Icons.remove),
                  ),
              const Text("1"),
              IconButton(
                    onPressed: () {}, // Você precisa definir uma função para o onPressed
                    icon: const Icon(Icons.add_box_rounded, color: Colors.green,),
                  ),
                ]
              )
            ]
          ),
          const Column(
            children: [
              Icon(Icons.close),
              Text('\$4,99'),
            ]
          )
        ],
      ),
    );
  }
}