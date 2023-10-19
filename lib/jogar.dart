import 'package:flutter/material.dart';

class jogar extends StatefulWidget {
  String valor;

  jogar(this.valor); 

  @override
  _jogarState createState() => _jogarState();
}

class _jogarState extends State<jogar> {
   @override
  Widget build(BuildContext context) {
    
      var caminhoImagem;
      if(widget.valor == "cara"){
        caminhoImagem ="images/moeda_cara.png";
      }else{
        caminhoImagem = "images/moeda_coroa.png";
      }
      return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

          Image.asset(caminhoImagem),
          
          GestureDetector(
            child:Image.asset("images/botao_voltar.png"),
            onTap:(){
              Navigator.pop(context); 
            }
          )
          ]
        ),    
    ));
  }
}