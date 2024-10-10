import 'package:flutter/material.dart';
import 'package:site/pages/components/about_my.dart';
import 'package:site/pages/components/contacts.dart';
import 'package:site/pages/components/experience.dart';
import 'package:site/pages/components/projects.dart';
import 'package:site/pages/components/skills.dart';
import 'components/footer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  String _hoveredButton = ''; // Armazena o botão atualmente em foco

  // Função para rolar suavemente para uma posição específica
  void _scrollToPosition(double position) {
    _scrollController.animateTo(
      position,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  // Função para controlar a cor quando o mouse está sobre o botão
  void _onHover(bool isHovering, String buttonLabel) {
    setState(() {
      _hoveredButton = isHovering ? buttonLabel : '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87, // Fundo da página preto
      appBar: AppBar(
        backgroundColor: Colors.black, // Fundo da AppBar preto
        title: Text(
          'Lucas Ferreira',
          style: TextStyle(color: Colors.white), // Texto branco por padrão
        ),
        actions: [
          _buildNavBarButton('Sobre mim', 0),
          _buildNavBarButton('Habilidades', 150),
          _buildNavBarButton('Projetos', 500),
          _buildNavBarButton('Experiências', 1200),
          _buildNavBarButton('Contatos', 2400),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController, // Vincula o controlador ao SingleChildScrollView
        child: Column(
          children: [
            SizedBox(height: 40),
            AboutMy(),
            SizedBox(height: 40),
            Skills(),
            SizedBox(height: 40),
            Projects(),
            SizedBox(height: 40),
            Experience(),
            SizedBox(height: 40),
            Contacts(),
            SizedBox(height: 40),
            Footer(scrollToPosition: _scrollToPosition),
          ],
        ),
      ),
    );
  }

  // Função para criar o botão da AppBar com efeito hover
  Widget _buildNavBarButton(String label, double scrollTo) {
    return MouseRegion(
      onEnter: (_) => _onHover(true, label),
      onExit: (_) => _onHover(false, label), // Resetar a cor quando o mouse sai
      child: TextButton(
        onPressed: () => _scrollToPosition(scrollTo),
        child: Text(
          label,
          style: TextStyle(
            color: _hoveredButton == label ? Colors.amber : Colors.white,
          ),
        ),
      ),
    );
  }
}
