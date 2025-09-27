import 'package:flutter/material.dart';
import 'package:widgets_app/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/busttons/buttons_screen.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
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
        Navigator.pushNamed(context, menuItem.link);
      },
    );
  }
}
