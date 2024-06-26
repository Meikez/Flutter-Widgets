import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

   const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});

   
}
 const List<MenuItem> appMenuItems = [
    MenuItem(
        title: 'Botones',
        subtitle: 'Varios botones en Flutter',
        link: '/buttons',
        icon: Icons.smart_button_outlined),
    MenuItem(
        title: 'Tarjetas',
        subtitle:'Contenedor estilizado',
        link: '/cards',
        icon: Icons.credit_card),        
  ];