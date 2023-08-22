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
    title: 'Counter RiverPod',
    subtitle: 'Control de estado con RiverPod',
    link: '/counter',
    icon: Icons.add,
  ),
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
    title: 'Progress Indicators',
    subtitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbar',
    subtitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated container',
    subtitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.check_box_outlined,
  ),
  MenuItem(
    title: 'Ui Controls = Tiles',
    subtitle: 'Una serie de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: 'Introudcción a la palicación',
    subtitle: 'Tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessibility_new_rounded,
  ),
  MenuItem(
    title: 'Infinite scrolll y Pull',
    subtitle: 'Listas infinitas y pull refresh',
    link: '/infinite',
    icon: Icons.list_alt_outlined,
  ),
  MenuItem(
    title: 'Cambiar Theme',
    subtitle: 'Cambiar theme de la app',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),

];
