import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fluterrr + Material 3')),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomeListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomeListTile extends StatelessWidget {
  const _CustomeListTile({required this.menuItem});

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        // Navegación tradicional
        // Navigator.push(context, MaterialPageRoute(builder: (context) => const ButtonsScreen()));
        // Navigator.pushNamed(context, menuItem.link);

        // Navegación con GoRouter
        // context.pushNamed(CardsScreen.routeName);
        context.push(menuItem.link);
      },
    );
  }
}
