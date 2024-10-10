import 'package:flutter/material.dart';

class AboutMy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Sobre mim',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Meu nome é Lucas Ferreira e sou um profissional de TI apaixonado por tecnologia e desenvolvimento. '
                  'Com formação acadêmica em Sistemas de Informação e experiência prática, me tornei um desenvolvedor Java '
                  'habilidoso, buscando sempre aprimorar minhas habilidades nessa linguagem. '
                  'Desde o ensino médio, percebi que a área de TI era minha vocação, desde então busco aprender e me atualizar constantemente. '
                  'Nesta jornada profissional e pessoal, continuo buscando novos desafios e oportunidades de crescimento, '
                  'sempre aberto a aprender novas tecnologias, a enfrentar projetos inovadores e a contribuir para o avanço da TI.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
