import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/theme/app_theme.dart';

// lIstado de colores inmutables

final colorListProvider =
    Provider((ref) => colorList); // este providere s par inmutables

final isDarkModeProvider = StateProvider((ref) => false);

// Un simple int
final selectedColorProvider = StateProvider((ref) => 0);

//Un objeto de tipo AppTheme (mi clase custom)
final themeNotifierprovider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = ESTADO= new AppTheme()
  ThemeNotifier()
      : super(AppTheme()); // quiero mantener una instancia de apptheme

  void toggleDarkMode() {
    state = state.copyWith(isDarkmode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
