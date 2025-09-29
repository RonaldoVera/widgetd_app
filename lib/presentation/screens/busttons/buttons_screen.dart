import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String routeName = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SizedBox(
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
              ElevatedButton(
                onPressed: null,
                child: const Text('Elevated disabled'),
              ),

              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Elevated Icon'),
              ),

              FilledButton(onPressed: () {}, child: const Text('Filled')),

              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.accessibility_new),
                label: const Text('Filled Icon'),
              ),

              OutlinedButton(onPressed: () {}, child: const Text('Outlined')),

              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.account_balance),
                label: const Text('Outlined Icon'),
              ),

              TextButton(onPressed: () {}, child: const Text('Text Button')),

              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.adb),
                label: const Text('Text Icon'),
              ),

              //instance of a custom button
              CustomButton(),

              IconButton(onPressed: () {}, icon: const Icon(Icons.ac_unit)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Botón personalizado
class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola Mundo',
              style: TextStyle(color: colors.onPrimary),
            ),
          ),
        ),
      ),
    );
  }
}
