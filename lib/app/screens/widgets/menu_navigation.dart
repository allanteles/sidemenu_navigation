import 'package:flutter/material.dart';

class MenuNavigation extends StatelessWidget {
  const MenuNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedColor = Theme.of(context).colorScheme.primary;
    const unselectedColor = Colors.grey;
    const labelStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

    void selectPage(int index) {
      switch (index) {
        case 0:
          // Get.toNamed("/cadastro_perfil", id: 1);
          break;
        case 1:
          //Get.toNamed("/cadastro_mensagem", id: 1);
          break;
        case 2:
          // Get.toNamed("/cadastro_historico", id: 1);
          break;
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/images/brasao_branco_vertical.png',
          width: 180,
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(minHeight: MediaQuery.of(context).size.height),
          child: IntrinsicHeight(
            child: NavigationRail(
              extended: true,
              selectedIndex: 0,
              selectedLabelTextStyle: labelStyle.copyWith(color: selectedColor),
              unselectedLabelTextStyle:
                  labelStyle.copyWith(color: unselectedColor),
              selectedIconTheme: IconThemeData(color: selectedColor, size: 25),
              unselectedIconTheme:
                  const IconThemeData(color: unselectedColor, size: 20),
              onDestinationSelected: (value) {
                // index.value = 0;
                selectPage(value);
              },
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person),
                  label: Text('NUPDEC'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.email_outlined),
                  selectedIcon: Icon(Icons.email),
                  label: Text('Mensagem'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.water),
                  selectedIcon: Icon(Icons.water_sharp),
                  label: Text('Histórico'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.local_phone_outlined),
                  selectedIcon: Icon(Icons.local_phone),
                  label: Text('Telefones'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.link_outlined),
                  selectedIcon: Icon(Icons.link),
                  label: Text('Links'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.warning_amber_outlined),
                  selectedIcon: Icon(Icons.warning_amber),
                  label: Text('Nível de alerta'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person_4_outlined),
                  selectedIcon: Icon(Icons.person_4),
                  label: Text('Usuário'),
                ),
              ],
              trailing: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: TextButton.icon(
                      label: const Text('Sair'),
                      icon: const Icon(Icons.logout),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
