import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final Function(double) scrollToPosition;

  Footer({required this.scrollToPosition});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Fundo preto para o rodapé
      padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0), // Mais espaçamento para um design mais limpo
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(color: Colors.grey, thickness: 1), // Linha de divisão elegante acima do rodapé
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFooterButton('Sobre mim', 0),
              SizedBox(width: 30),
              _buildFooterButton('Habilidades', 150),
              SizedBox(width: 30),
              _buildFooterButton('Projetos', 500),
              SizedBox(width: 30),
              _buildFooterButton('Experiências', 1200),
              SizedBox(width: 30),
              _buildFooterButton('Contatos', 2400),
            ],
          ),
          SizedBox(height: 20),
          Divider(color: Colors.grey, thickness: 1), // Outra linha de divisão abaixo
          SizedBox(height: 20),
          Text(
            '© 2024 Lucas Ferreira',
            style: TextStyle(
              color: Colors.white.withOpacity(0.7), // Cor branca com opacidade para um toque mais suave
              fontSize: 14,
              fontWeight: FontWeight.w300,
              letterSpacing: 1.2, // Espaçamento entre as letras para um estilo mais clean
            ),
          ),
        ],
      ),
    );
  }

  // Função para criar o botão com hover
  Widget _buildFooterButton(String label, double scrollTo) {
    return MouseRegion(
      onEnter: (_) => _onHover(true, label),
      onExit: (_) => _onHover(false, label),
      child: TextButton(
        onPressed: () => scrollToPosition(scrollTo),
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent), // Remove a cor padrão do hover
        ),
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 300),
          style: TextStyle(
            color: _hoveredButton == label ? Colors.amber : Colors.white.withOpacity(0.7), // Cor branca clara e hover amarelo
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.1, // Um leve espaçamento para dar um toque moderno
          ),
          child: Text(label),
        ),
      ),
    );
  }

  String _hoveredButton = ''; // Armazena o botão que está em hover

  // Função para gerenciar o hover
  void _onHover(bool isHovered, String label) {
    _hoveredButton = isHovered ? label : '';
  }
}
